#!/bin/bash
git diff origin master | grep "console.log"
if [ $? -eq 0 ]; then 
    echo "Your commits include 'console.log'! Remove the console.log statement !!!!" >&2
    exit 1;
else
    exit 0
fi