#!/bin/bash
sudo -i 
yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
firewall-cmd --permanent -add-port=80/tcp
firewall-cmd --reload 
echo "this is to make sure my application is working" >/var/www/html/index.html