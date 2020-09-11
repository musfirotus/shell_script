#!/bin/bash

filename=$1
cat $filename | while read LINE; do
    IFS='/' read -ra SOURCE <<< $LINE
    file=${SOURCE[-1]}
    data=$(curl -s $LINE)
    echo $data > ${file}.json
    cat ${file}.json | json_pp # disable aja, supaya tidak memenuhi bash
    echo "${file}.json created"
done