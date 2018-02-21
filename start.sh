#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install zsh

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo usermod $USER -s /usr/bin/zsh

sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"cloud\"/" ~/.zshrc
sed -i "s/# ENABLE_CORRECTION/ENABLE_CORRECTION/" ~/.zshrc
sed -i "s/# COMPLETION_WAITING_DOTS/COMPLETION_WAITING_DOTS/" ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git composer laravel5 colored-man cp screen)/" ~/.zshrc
sed -i "s/PROMPT='/PROMPT='\$USER@\$HOST /" ~/.oh-my-zsh/themes/cloud.zsh-theme
source ~/.zshrc