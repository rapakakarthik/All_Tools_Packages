#!/bin/bash
sudo yum update -y

#git
sudo yum install git -y

#java
sudo dnf install java-11-amazon-corretto -y

#Maven
sudo yum install maven -y

#Tomcat
#download form Internet with command 
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz
tar -xvzf apache-tomcat-9.0.93.tar.gz
rm -rf apache-tomcat-9.0.93.tar.gz
mv apache-tomcat-9.0.93 tomcat

#Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

#Terraform 
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform