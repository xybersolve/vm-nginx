#!/bin/bash

apt-get -y update

apt-get -y install nginx

# delete nginx config file 
rm -rf /etc/nginx/site-enabled
# copy in our own config file
cp -r /vagrant/sites-enabled /etc/nginx

# only used in etup of provisioning
#cp -r /usr/share/nginx/www /vagrant/www

# delete nginx document root 
rm -rf /usr/share/nginx/www
# and create symlink for document root to our project files
ln -s /vagrant/www /usr/share/nginx/www

# finally start nginx
service nginx start
