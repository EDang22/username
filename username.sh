#! /bin/bash
# username.sh
echo "Enter a username: \nUsername must be all lowercase letters, digits or the underscore character. Username must start with lowercase letter and be between 3-12 characters."
read USERNAME
while echo $USERNAME | egrep -v "^[a-z][a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username. Try again"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"

