#!/bin/bash

echo "Executando processo de criação de diretórios..."
echo "-----------------------------------------------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Executando processo de criação de grupos de usuários..."
echo "-------------------------------------------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Executando processo de criação de usuários..."
echo "---------------------------------------------"

useradd carlos -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passd -crypt Acesso321) -G GRP_SEC

echo "Adicionando permissões as pastas dos grupos..."
echo "----------------------------------------------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Adicionando permissões 770 as pastas..."
echo "---------------------------------------"

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec

echo "Adicionando permissões 777 a pasta publica..."
echo "---------------------------------------------"
chmod 777 /publico


