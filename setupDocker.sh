#!/bin/sh
#
echo $(date +"%F %T%z") "starting script setupDocker.sh"

echo "------------------------------------"
echo " INSTALLING DOCKER on UBUNTU/DEBIAN "
echo "------------------------------------"

if [ -x "$(command -v docker)" ]; then
  echo " Docker is already installed"
else
  echo " Install docker by apt"
#  curl -sSL https://get.docker.com | sh
  sudo apt install docker
  sudo systemctl enable docker
  sudo systemctl start docker
  sudo usermod -aG docker ubuntu
#  sudo su - ubuntu
fi
