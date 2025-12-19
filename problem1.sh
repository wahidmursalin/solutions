#!/bin/bash

check_prime() {
    n=$1
    if [ $n -le 1 ]; then
        echo "Not Prime"
        return
    fi
    for ((i=2;i<=n/2;i++))
    do
        if [ $((n%i)) -eq 0 ]; then
            echo "Not Prime"
            return
        fi
    done
    echo "Prime"
}

check_leap() {
    y=$1
    if [ $((y%400)) -eq 0 ] || { [ $((y%4)) -eq 0 ] && [ $((y%100)) -ne 0 ]; }
    then
        echo "Leap Year"
    else
        echo "Not Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1;i<=n;i++))
    do
        sum=$((sum+i))
    done
    echo "Sum = $sum"
}

echo "Enter a number:"
read num

while true
do
    echo "1. Check Prime"
    echo "2. Check Leap Year"
    echo "3. Print Sum Series (1 to n)"
    echo "4. Exit"
    read choice

    case $choice in
        1) check_prime $num ;;
        2) check_leap $num ;;
        3) sum_series $num ;;
        4) exit ;;
        *) echo "Invalid choice" ;;
    esac
done
