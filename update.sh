#!/bin/bash

sudo apt update sudo apt upgrade -y sudo apt autoremove -y 1>/dev/null 2>&1
update=`sudo apt update 2>/dev/null`
if
echo $update | grep -o "Все пакеты имеют последние версии" > /dev/null
then
echo -e "\033[34m   Все пакеты имеют последние версии"
else
echo -e "\033[31m   Есть какие-то проблемы или нюансы требующие внимания"
fi
