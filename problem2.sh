#!/bin/bash

echo "Enter starting year:"
read start
echo "Enter ending year:"
read end

count=0
echo "Leap Years are:"

for ((y=start;y<=end;y++))
do
    if [ $((y%400)) -eq 0 ] || { [ $((y%4)) -eq 0 ] && [ $((y%100)) -ne 0 ]; }
    then
        echo $y
        count=$((count+1))
    fi
done

echo "Total Leap Years: $count"