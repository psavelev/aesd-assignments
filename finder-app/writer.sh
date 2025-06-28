#!/bin/sh
# Writes a given string to a file
# Usage: ./writer.sh <path_to_file> <string_to_write>
# Author: Pavel Savyelyev

if [ $# -lt 2 ]
then
    echo "Usage: $0 <path_to_file> <string_to_write>"	
    exit 1
fi

dir_path=$(dirname "$1")
if [ ! -d "$dir_path" ]
then
    mkdir -p "$dir_path"
fi

echo "$2" > "$1"
if [ ! $? -eq 0 ]
then
    exit 1
fi

exit 0