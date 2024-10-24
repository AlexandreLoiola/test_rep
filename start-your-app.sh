#!/bin/bash

# Instalar o Nginx se não estiver instalado
if ! command -v nginx &> /dev/null
then
    sudo apt update
    sudo apt install -y nginx
fi

# Criar um diretório para servir o arquivo
sudo mkdir -p /var/www/html

# Copiar o index.html para o diretório do Nginx
sudo cp /home/ubuntu/deploy/index.html /var/www/html/

# Garantir que o Nginx esteja rodando
sudo systemctl start nginx
sudo systemctl enable nginx