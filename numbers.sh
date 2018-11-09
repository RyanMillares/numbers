#! /bin/bash
# numbers.sh
# Ryan Millares

echo "Begin? y/n"
read ANS
while [ "$ANS" = "y" ]
do
	echo "Please put a positive number!"
	read NUM
	while echo $NUM | egrep -v "^[1-9]{1}$" > /dev/null 2>&1
	do
		echo "Must be a number from 1 to 9!"
		echo "Please try again."
		read NUM
	done
	
	Z=1
	while [ "$Z" -le "$NUM" ]
	do
		if [ "$((Z % 2))" -eq 0 ] 
		then
			echo "$Z Even"
		else 
			echo "$Z Odd"
		fi
		Z=$((Z+1))
	
		
	done 
	echo "Thank you!"
	echo "Want to do another?"
	read ANS
done
echo "All done!"
# last read is to pause program before end, was used to read error msgs before script closes
read stop

