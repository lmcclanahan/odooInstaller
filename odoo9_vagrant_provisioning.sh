#!bin/sh

vagrant init ubuntu/trusty64
vagrant up --provider virtualbox --no-parallel --destroy-on-error --install-provider
vagrant ssh
sudo apt-get update;
sudo apt-get install git curl wget vim mlocate -y
wget https://raw.githubusercontent.com/Yenthe666/InstallScript/9.0/odoo_install.sh
chmod +x odoo_install.sh
./odoo_install.sh
 
#  To make the odoo load from host pc have to edit Vagrantfile search and un-comment ( remove # from the beginning of the line ) 

#  config.vm.network private_network ip:192.168.33.10   

#  (on ubuntu/trusty64 box have this line and just need to remove the #)
#  save the vagrant file
#  vagrant reload
#  192.168.33.10:8069

