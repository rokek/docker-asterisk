#!/bin/bash

DOCKER_HOST_IP=$(hostname -I | awk '{ print $1 }')

rm -rf asterisk
cp -pr asterisk.orig asterisk
sed -i "s/DOCKER_HOST_IP/$DOCKER_HOST_IP/g" asterisk/*

exit 0
