#!/bin/bash

# Prompt for GitHub authentication
read -sp "Enter your GitHub personal access token: " github_token
echo

# Export credentials for use in other scripts
export GITHUB_TOKEN="$github_token"

# Call the starter script
source <(curl -s -H "Authorization: token $github_token" "https://raw.githubusercontent.com/0ldeuboi/linux-os-scripts/main/automation/setup_script.sh)"