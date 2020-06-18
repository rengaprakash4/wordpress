#!/usr/bin/env bash
rm -rf webapp
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv wordpress webapp && rm latest.tar.gz