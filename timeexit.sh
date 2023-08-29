# Função para matar processos travados
_timeexit() {
    # Faz contagem regressiva a partir
    # do argumento dado a função.
    # ex.: _timeexit 10 Contará de 10 abaixo.
    ( for te in `seq ${@} -1 0`; do
        # Conta 1s para ser possível parar está
        # função com CTRL+c
        sleep 1
        # grep procura o pid de qualquer processo
        # executado anteriormante a este loop.
        # O loop está encapsulada entre (...)
	# para que os processos dentro do mesmo
        # não faça parte da procura abaixo.
        # Se o processo não for encontrado
        # supõe que já terminou, então quebra
        # este loop em || break 2> /dev/null
        grep --line-buffered -q -o $! <<<$(ps ax -o pid=,args=) || break 2> /dev/null
        # Após a contagem chegar a 1 o processo
        # será morto. É emitido um aviso, e o
        # loop for é quebrado.
        [ $te == 1 ] && {
            kill -9 $! 2> /dev/null;
            echo -e "\033[31m\033[01mConnection error!\e[00m";
            break 2> /dev/null
        }
    done )
}
