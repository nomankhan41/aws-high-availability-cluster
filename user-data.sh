#!/bin/bash
yum update -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx
echo "<h1>Connected to Server in $(curl http://169.254.169.254/latest/meta-data/placement/availability-zone)</h1>" > /usr/share/nginx/html/index.html
