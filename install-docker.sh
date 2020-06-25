#!/bin/bash
echo "###############################"
echo "[Task 1] Installation des prérequis Docker"
echo "###############################"
sudo yum install yum-utils device-mapper-persistent-data lvm2 -y 

echo "###############################"
echo "[Task 2] Configuration du repository Docker"
echo "###############################"
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 

echo "###############################"
echo "[Task 3] installation Docker runtime"
echo "###############################"
sudo yum install docker-ce -y

echo "###############################"
echo "[Task 4] Start & Enable Docker"
echo "###############################"
sudo systemctl start docker
sudo systemctl enable docker