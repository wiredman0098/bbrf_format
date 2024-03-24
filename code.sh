#!/bin/bash

# Check if the input file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# Check if the input file exists
if [ ! -f "$1" ]; then
    echo "Error: Input file '$1' not found."
    exit 1
fi

# Read each line from the input file and process it
while IFS= read -r domain; do
    # Encapsulate each domain within single quotes
    printf "'%s' " "$domain"
done < "$1"

# Print a new line after processing all domains
echo
