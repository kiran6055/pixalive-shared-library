#!/bin/bash

echo "please enter directory path"
read  directory_path

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory does not exist!"
    exit 1
fi


DATE=$(date +%F)
LOG_FILE="$DATE.log"

INPUT=$(find "${directory_path}"/*.log -type f -mtime +30)


for FILE in $INPUT 
do

		echo "deleting log files which are older than 30 days: $FILE" &>> "$LOG_FILE"
		rm -f $FILE
	
done
