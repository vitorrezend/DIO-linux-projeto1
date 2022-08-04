#!/bin/bash

echo "Criando Diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo usuário dono, e grupos."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Aplicando permissões aos diretórios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico


echo "Criando usuários do grupo administrativo..."

useradd carlos -m -s /bin/bash -p 123 -G GRP_ADM
useradd mario -m -s /bin/bash -p 123 -G GRP_ADM
useradd joao -m -s /bin/bash -p 123 -G GRP_ADM

echo "Criando usuários do grupo vendas"

useradd debora -m -s /bin/bash -p 123 -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p 123 -G GRP_VEN
useradd roberto -m -s /bin/bash -p 123 -G GRP_VEN

echo "Criando usuários do grupo segurança"

useradd josefina -m -s /bin/bash -p 123 -G GRP_SEC
useradd amanda -m -s /bin/bash -p 123 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p 123 -G GRP_SEC

echo "Forçando alterações de senha dos usuários"

echo "Forçando alterações de senha nos usuários com acesso a pasta /adm"

passwd -e carlos
passwd -e mario
passwd -e joao

echo "Forçando alterações de senha nos usuários com acesso a pasta /ven"

passwd -e debora
passwd -e sebastiao
passwd -e roberto

echo "Forçando alterações de senha nos usuários com acesso a pasta /sec"

passwd -e josefina
passwd -e amanda
passwd -e rogerio


echo "Fim..."
