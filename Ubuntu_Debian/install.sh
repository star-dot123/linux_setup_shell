#!/bin/bash

# 更新と基本ツールのインストール
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget git nano vim htop net-tools tmux unzip zip tar jq fzf bat exa

# 開発ツールのインストール
sudo apt install -y php php-mysql php-pdo php-xml php-mbstring php-curl php-string composer
sudo apt install -y python3 python3-pip
sudo apt install -y docker.io docker-compose
sudo apt install -y mysql-server redis

# 本番環境向けツール
sudo apt install -y ufw fail2ban certbot logrotate rsync cron

# Node.js (LTS) のインストール
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Zsh と Oh-My-Zsh のインストール
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Docker グループにユーザーを追加
sudo usermod -aG docker $USER

echo "Ubuntu/Debian 環境構築完了！"
