#!/bin/bash
# Load nvm environment
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

sh install-node-hydrogen.sh

read -p "Do you want to set it to the default version?[y/n]" confirm

# Get the root dir from git
root_dir="$(git rev-parse --show-toplevel)"

# Change to the root directory
cd "$root_dir"
echo "Changed to the root directory: $root_dir"

if [ "$confirm" = "y" ] && [ ! -f ".nvmrc" ]; then
    echo "setting up lts as default node version..."
    nvm alias default lts/hydrogen
    echo "creating a .nvmrc with the default version"
    echo "lts/hydrogen" >> .nvmrc
    echo "now you are setted up! lets code!"
    exit 0
else
    echo "installed the lts/hydrogen version of node but not created a file .nvmrc. check if the file does not exists already!"
fi