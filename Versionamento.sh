#!/bin/bash

mkdir ~/Publico ~/aDm ~/vEn ~/sEc

echo "Crée de le groupe"
groupadd GRP_ADM GRP_VEN GRP_SEC
echo "Crée de le client"
adduser carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) 
adduser Maria -m -s /bin/bash -p $(openssl passwd -crypt senha123)
adduser joao -m -s /bin/bash -p $(openssl passwd -crypt senha123)

adduser Debora -m -s /bin/bash -p $(openssl passwd -crypt senha123)  
adduser sebastiao -m -s /bin/bash -p $(openssl passwd -crypt senha123) 
adduser roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) 

adduser Josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) 
adduser Amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) 
adduser rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) 

echo "Ajouter au groupe"

usermod -a -G GRP_ADM carlos Maria joao
usermod -a -G GRP_VEN Debora sebastiao roberto
usermod -a -G GRP_SEC Josefina Amanda rogerio

echo "Ajouter les autorisations"

chown root:GRP_ADM ~/aDm
chown root:GRP_VEN ~/vEn
chown root:GRP_SEC ~/sEc

chmod 770 ~/aDm
chmod 770 ~/vEn
chmod 770 ~/sEc
chmod 777 ~/Publico

echo "terminé"








