#/bin/sh

# function in bash

function weekend_greet 
{
   echo "Enjoy the weekend! ${1} ${2}!"
}

function weekday_greet
{
   echo "Hope you are working hard, ${1} ${2}!"
}


echo "Please enter your first name"
read fname
echo "Please enter your last name"
read lname

day=$(date | cut -d' ' -f1)  # you can use this form instead of backticks

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet $fname $lname
else
   weekday_greet $fname $lname
fi

# exercise: Add a second argument to the function 
# and make it give a greeting based on the new 
# argument.
