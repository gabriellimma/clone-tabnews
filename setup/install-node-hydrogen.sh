#!/bin/bash

# Load nvm environment
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Verify nvm version
echo "nvm version:"
nvm -v

# Install the LTS/hydrogen version of Node.js
echo "Installing the LTS/hydrogen version of Node.js"
nvm install lts/hydrogen
exit 0