# !/bin/bash

zip -r -9 data_arch /var/www/shell_script/* -x "/var/www/.git/*"

scp -r /var/www/shell_script/data_arch.zip max@172.104.143.166:/var/www/pinochet/shell_script

ssh max@172.104.143.166 "unzip /var/www/pinochet/shell_script/data_arch -d /home/max/"

ssh max@172.104.143.166 "ls -l /var/www/pinochet/shell_script/"