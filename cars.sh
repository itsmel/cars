#! /bin/bash
#cars.sh
#Melody

continue="yes"

while [ $continue = "yes" ]
do
	echo "A. Add a car"
	echo "L. List the cars"
	echo "Q. Quit the program"
	read CHOICE

	case "$CHOICE" in
		"A") echo "What is the year?"
		read YEAR
		echo "What is the make?"
		read MAKE
		echo "What is the model?"
		read MODEL 
		echo $YEAR:$MAKE:$MODEL >> My_old_cars;;

		"L") sort My_old_cars;;

		"Q") continue="no"
			echo "Goodbye!";;
	esac
done
