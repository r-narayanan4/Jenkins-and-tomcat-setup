#!/usr/bin/env bash
sudo mkdir /home/ec2-user/opt
cd /home/ec2-user/opt
#Script to install jenkins (Long Term Support release)
sudo yum update -y
sudo yum install wget -y

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
# Add required dependencies for the jenkins package
#sudo yum install java-11-openjdk -y
sudo amazon-linux-extras install java-openjdk11
sudo yum install jenkins -y
sudo systemctl daemon-reload -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
