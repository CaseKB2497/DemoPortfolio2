#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/CaseKB2497/DemoPortfolio2/archive/refs/heads/main.zip
unzip main.zip
cp -r DemoPortfolio2-main/* /var/www/html/
rm -rf DemoPortfolio2-main main.zip
systemctl enable httpd 
systemctl start httpd