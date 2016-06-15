#!/bin/bash

apt-get -y update

apt-get -y install nginx

cp -r /usr/share/nginx/www /vagrant/www

rm -rf /usr/share/nginx/www

ln -s /vagrant/www /usr/share/nginx/www

service nginx start
