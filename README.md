# sublime
Acessa um link com IP e User Agent aleatórios

Este script foi criado originalmente para acessar "sublimefinancas.com", não é garantido o funcionamento em outros sites.
* Instale os pacotes nescessários:
```bash
pkg install git w3m procps tor torsocks -y
```

* Clone este repositório no Termux:
```bash
git clone https://github.com/sharesourcecode/sublime.git
```
* Execução do script com lista de proxys:
```bash
bash $HOME/sublime/proxy.sh
```
* Execução do script com tor:
```bash
bash $HOME/sublime/access.sh
```
* Desinstalação:
```bash
rm -rf $HOME/sublime
```
