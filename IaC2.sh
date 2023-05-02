echo "Iniciando..."

#! /bin/bash

echo "Atualizando servidor..."

apt update
apt upgrade -y

echo "Servidor atualizado com sucesso!"

echo "Instalando apache2"
apt install apache2 -y
echo "Apache2 instalado com sucesso!"

echo "Instalando unzip"
apt install unzip -y
echo "Unzip instalado com sucesso!"

echo "Baixando arquivo para a pasta tmp"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Arquivo baixado com sucesso!"

echo "Descompactando arquivo main.zip"
unzip main.zip
echo "Arquivo descompactado com sucesso!"

echo "Copiando arquivos para o diretório padrão do apache2"
cd /var/www/html
rm index.html
cp /tmp/linux-site-dio-main/* /var/www/html -r
echo "Arquivos copiados com sucesso"ls
