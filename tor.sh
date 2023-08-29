# Função para iniciar a rede tor
_tor () {
    echo "Iniciando a rede tor..."
    # Executa o comando tor em segundo plano.
    tor &
    # Alerta um possível tempo de espera
    echo "Aguarde 1m..."
    # Espera 30s e não podem ser interrompido.
    sleep 30s
    # Espera +30s podendo interromper com ENTER.
    echo "Caso já tenha iniciado tecle ENTER."
    read -t 30
    # Limpa a tela
    reset; clear
}
