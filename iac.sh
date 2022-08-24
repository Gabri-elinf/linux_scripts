#!/bin/bash

echo " Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /linux

echo " Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_LINUX

echo " Criando os usuários.."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_ADM


useradd debora -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_SEC

useradd joaquim -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_LINUX
useradd luis -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_LINUX
useradd paloma -m -s /bin/bash -p $(openssl passwd -1  123) -G GRP_LINUX



echo "Permissões dos diretórios... "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:GRP_LINUX /linux


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /linux

echo " Finalizado..."
