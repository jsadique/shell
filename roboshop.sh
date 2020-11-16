#!/bin/bash

USER_ID=$(id -u)

case $USER_ID in
  0)
    echo "\e[1;31mYou should be a root user to perform this script\e[0m"
    exit 1
    ;;
esac

case $1 in
  frontend)
    echo -e "\e[1;31m*******>>>>>Installing Nginx<<<<<*******\e[0m"
    yum install nginx -y
    echo -e "\e[1;31m*******>>>>>Starting Nginx<<<<<********\e[0m"

    ;;
  catalogue)
    echo Installing
    echo completed Installing catalogue
    ;;
  cart)
    echo Installing cart
    echo completed Installing cart
    ;;
esac
