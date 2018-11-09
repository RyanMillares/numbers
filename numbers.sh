#! /bin/bash
# numbers.sh
# Ryan Millares

echo "Please put a number from 1 to 9!"
read NUM
while echo $NUM | egrep -v "^[1-9]{1}$" > /dev/null 2>&1
do
	echo "Must be a number from 1 to 9!"
	echo "Please try again."
	read NUM
done
declare -i COUNT = 0
while "$COUNT" -le "$NUM"
do
	if [$(($COUNT%2)) -eq 0]
	then
		echo "$COUNT Even"
	else 
		echo "$COUNT Odd"
	fi
	N=$((COUNT+1))
done 
echo "Thank you!"
