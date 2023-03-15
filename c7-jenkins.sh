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
<<<<<<< HEAD:c7-jenkins-server.sh

#InstallApache Maven 3.9.0
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz --no-check-certificate
sudo tar -xvzf apache-maven-3.9.0-bin.tar.gz
sudo rm -rf apache-maven-3.9.0-bin.tar.gz
sudo mv apache-maven-3.9.0 maven-3.9.0
sudo echo -e "export M2_HOME=/maven\nexport PATH=${M2_HOME}/bin:${PATH}" > /etc/profile.d/maven.sh
=======
>>>>>>> 9ce6d81a6aa1502ac9d46b58bc66bf6bce8f99e6:c7-jenkins.sh
