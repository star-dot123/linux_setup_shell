#!/bin/bash

# EPELリポジトリの有効化と基本ツールのインストール
sudo dnf install -y epel-release
sudo dnf update -y
sudo dnf install -y curl wget git nano vim htop net-tools tmux unzip zip tar jq fzf bat exa

# 開発ツールのインストール
sudo dnf install -y php php-mysqlnd php-pdo php-xml php-mbstring php-curl php-string composer
sudo dnf install -y python3 python3-pip
sudo dnf install -y docker docker-compose
sudo dnf install -y mariadb-server redis

# 本番環境向けツール
sudo dnf install -y ufw fail2ban certbot logrotate rsync cronie

# Node.js (LTS) のインストール
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo dnf install -y nodejs

# Zsh と Oh-My-Zsh のインストール
sudo dnf install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Docker グループにユーザーを追加
sudo usermod -aG docker $USER
sudo systemctl enable docker --now

echo "RedHat系環境構築完了！"
