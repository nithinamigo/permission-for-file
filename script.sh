#!/bin/bash

# 1️⃣ Check HTTP Response Code for guvi.in
URL="https://guvi.in"
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" $URL)

echo "HTTP Response Code: $HTTP_CODE"

if [[ $HTTP_CODE -eq 200 ]]; then
    echo "✅ Success: Website is reachable!"
else
    echo "x Failure: Website returned error code $HTTP_CODE"
fi

#Replace "give" with "learning" from 5th line till end (only in lines containing "welcome")
FILE="input.txt"  # Change this to your actual file name

if [[ -f $FILE ]]; then
    sed -i '5,$ {/welcome/s/give/learning/g}' "$FILE"
    echo "yes Text replacement completed in $FILE"
else
    echo "x Error: File $FILE not found!"
fi

