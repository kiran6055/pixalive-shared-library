#
#!/bin/bash

echo "please eneter github repo url"
read  github_repo_url

git clone $github_repo_url


# Check if the directory exists
#if [ ! -d "$directory_path" ]; then
#    echo "Directory does not exist!"
#    exit 1
#fi


DATE=$(date +%F)
LOG_FILE="$DATE.log"


