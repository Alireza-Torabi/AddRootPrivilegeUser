#!/bin/bash

# Prompt for username
read -p "Enter the username: " username

# Prompt for password (Note: This is not secure for production use)
read -s -p "Enter the password: " password
echo

# Create user with root privileges
sudo useradd -m -s /bin/bash $username
echo "$username:$password" | sudo chpasswd

# Add user to the sudo group
sudo usermod -aG sudo $username

echo "User '$username' created with root privileges."
