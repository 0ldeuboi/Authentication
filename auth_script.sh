#!/bin/bash

# Prompt for GitHub authentication
read -p "Enter your GitHub username: " github_username
read -sp "Enter your GitHub personal access token: " github_token
echo

# Export credentials for use in other scripts
export GITHUB_USERNAME="$github_username"
export GITHUB_TOKEN="$github_token"

# Call the starter script
bash -c "$(wget -qO - https://raw.githubusercontent.com/0ldeuboi/linux-os-scripts/main/automation/setup_script.sh)"
