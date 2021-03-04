#!/bin/bash
USER="$1"
CURRENTUSER="$2"
sudo useradd -m -d /home/${USER} -s /bin/bash ${USER}
sudo mkdir /home/${USER}/.ssh
sudo cp /home/${CURRENTUSER}/SYS-265-02-TechJournal/linux/public-keys/id_rsa.pub /home/${USER}/.ssh/authorized_keys
sudo chmod 700 /home/${USER}/.ssh
sudo chmod 600 /home/${USER}/.ssh/authorized_keys
sudo chown -R ${USER}:${USER} /home/${USER}/.ssh
