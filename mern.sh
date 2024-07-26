#!/bin/bash
# Author: Visahl Samson David Selvam
# Email: visahlsamson@gmail.com

# Update the package list
sudo apt update

# Install curl if it's not already installed
sudo apt install -y curl

# Install the latest Node.js version (change 21.x to desired version if needed, as of the current time the latest version is 21.7.1)
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash -
sudo apt-get install -y nodejs

# Ensure Node.js is Up-to-Date (Consider using a version manager for more control)
sudo npm cache clean -f
sudo npm update -g

# Install Yarn
sudo npm install -g yarn

# Install the latest version of PM2
sudo npm install -g pm2

# Verify the installation
node -v
npm -v
yarn --version
pm2 -v  # Added verification for PM2

# Note: This script installs the latest version available through the 
# NodeSource repository and npm. Consider checking their documentation 
# for versioning options: https://github.com/nodesource/distributions
