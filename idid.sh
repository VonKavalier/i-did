#!/bin/bash

file="/home/tom/Documents/idid.txt"

if [[ ! ${1+x} ]]; then
    echo "No arguments"
    echo "Try : 'show', 'edit' or write what you did"
    exit 1
fi

if [[ $1 == "show" ]]; then
    tail $file
elif [[ $1 == "edit" ]]; then
    $EDITOR $file
else
    lastday=$(grep '[0-9]\{2\}-[0-9]\{2\}-[0-9]\{4\}' $file | tail -1 | sed 's/[=]*\[//' | sed 's/\][=]*//')
    today=$(date +%d-%m-%Y) 
    if [[ $lastday != $today ]]; then
        echo "" >> $file
        echo "==============[$today]===============" >> $file
        echo "" >> $file
    fi
    echo "* $1" >> $file
fi
