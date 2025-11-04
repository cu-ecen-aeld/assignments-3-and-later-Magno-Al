#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Invalid number of arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

if [ $? -ne 0 ]; then
    echo "Error: Directory "$writedir" could not be created."
    exit 1
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: File "$writefile" could not be created."
    exit 1
fi

exit 0