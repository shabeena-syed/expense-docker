#!/bin/bash

# check whether root user or not
R="\[31m"
N="\e[0m"
 yum install -y yum-utils
 yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
 yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
 systemctl start docker
 systemctl enable docker
 usermod -aG docker centos
 echo -e "$R logout and login again"