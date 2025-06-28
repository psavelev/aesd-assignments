#!/bin/sh
# Finds the number of files in a directory and the number of lines that match a given string
# Usage: ./finder.sh <path_to_directory> <string_to_search>
# Author: Pavel Savyelyev

if [ $# -lt 2 ]
then
    echo "Usage: $0 <path_to_directory> <string_to_search>"	
    exit 1
fi

if [ ! -d "$1" ]
then
    echo "$1 is not a directory or directory does not exist"
    exit 1
fi

directory=$1
search_string=$2

count=$(find "$directory" -type f | wc -l)
line_count=$(grep -r "$search_string" "$directory" | wc -l) 

echo "The number of files are $count and the number of matching lines are $line_count"