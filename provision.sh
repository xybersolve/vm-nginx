#!/bin/bash

apt-get -y update

apt-get -y install nginx

# delete nginx config file 
rm -rf /etc/nginx/site-enabled
# copy our /sites-enabled config into /etc/nginx
cp -r /vagrant/sites-enabled /etc/nginx

# copy in our own config file

# BELOW: only used in setup of provisioning
#cp -r /vagrant/sites-enabled /etc/nginx
#cp -r /usr/share/nginx/www /vagrant/www

# Remove below after copying default to /vagrant/site-enabled 
# and setting document root as shared

# delete nginx document root 
#rm -rf /usr/share/nginx/www
# and create symlink for document root to our project files
#ln -s /vagrant/www /usr/share/nginx/www

# finally start nginx
 
service nginx start
