#!/bin/bash

pass=0
fail=0

echo "Enter Student ID:"
read id

echo "Enter marks of 3 subjects:"
read m1 m2 m3

total=$((m1+m2+m3))
percentage=$((total*100/300))

if [ $percentage -ge 80 ]; then
    grade="A+"
elif [ $percentage -ge 70 ]; then
    grade="A"
elif [ $percentage -ge 60 ]; then
    grade="B"
elif [ $percentage -ge 50 ]; then
    grade="C"
else
    grade="F"
fi

if [ "$grade" == "F" ]; then
    fail=$((fail+1))
else
    pass=$((pass+1))
fi

echo "----- Final Result -----"
echo "Student ID: $id"
echo "Total Marks: $total"
echo "Percentage: $percentage%"
echo "Grade: $grade"
echo "Passed: $pass"
echo "Failed: $fail"