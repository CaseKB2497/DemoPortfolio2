#!/bin/bash
yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd
git clone https://github.com/CaseKB2497/DemoPortfolio2.git /var/www/html/
