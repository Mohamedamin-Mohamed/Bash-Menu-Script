#!/bin/bash

until [[ "$choice" == 4 ]]
do
echo "******Command Menu******"
echo Select a command:
echo "1) ls"
echo "2) ls -l"
echo "3) pwd"
echo "4) exit"
echo "Choice:"
read choice

while  [[ "$choice" != 1 && "$choice" != 2  && "$choice" != 3 &&  "$choice" != 4 ]]
do
echo "Invalid Choice"
echo "******Command Menu******"
echo Select a command:
echo "1) ls"
echo "2) ls -l"
echo "3) pwd"
echo "4) exit"
echo "Choice:"
read choice
done

case "$choice" in
 "1")
 echo $(ls) ;;
 "2")
 echo $(ls -l) ;;
 "3")
 echo $(pwd) ;;
 "4")
  ;;
 esac
done

