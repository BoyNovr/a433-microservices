#!/bin/bash

#Membuat docker image dengan nama item-App:v1
docker build -t item-app:v1 .

#melihat daftar image 
docker images

#Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 boynovriyal/item-app:v1

#jalankan perintah docker login
echo $PASSWORD_DOCKER_HUB | sudo docker login -u boynovriyal --password-stdin

#mengunggah image ke Docker Hub
sudo docker push boynovriyal/item-app:v1
