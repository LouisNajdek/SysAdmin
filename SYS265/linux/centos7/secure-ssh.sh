#! /bin/sh
#secure-ssh.sh
#Author: Louis Najdek
#Creates a new ssh user with $1 paramater
#Adds a public key from the local repo or curled from the remote repo
echo "User: [$1]"
useradd -m -d /home/$1 -s /bin/bash $1
mkdir /home/$1/.ssh
cp ../public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
chmod 700 /home/$1/.ssh
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1 /home/$1/.ssh

