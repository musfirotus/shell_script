#!/bin/bash

if [[ $1 != http?(s)://* ]]; then
    echo "Invalid URL"
else
    curl $1 | jq '.'
fi