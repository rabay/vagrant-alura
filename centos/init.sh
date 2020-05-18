#/bin/bash

### Initial update
sudo yum makecache
sudo yum -y update

### Install Powershell and network tools
curl https://packages.microsoft.com/config/rhel/7/prod.repo |
  sudo tee /etc/yum.repos.d/microsoft.repo
sudo yum makecache
sudo yum -y install powershell net-tools vim
pwsh --version