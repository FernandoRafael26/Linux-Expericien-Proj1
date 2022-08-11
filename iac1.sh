#!/bin/bash

echo "Criando diretórios na raiz ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários, com senha, e cada um no seu grupo..."

useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd silva -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd reanata -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd eliza -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd macedo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd camile -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd cassio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd carol -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios ...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

