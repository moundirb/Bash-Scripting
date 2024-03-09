#!/bin/bash
select_random_activity() {
  local activities+=("Skydiving" "Virtual Reality Gaming" "Surfing" "Escape Room Adventure" "Mountain Biking")
  local arr_len=${#activities[@]} #length of the array
  local indx=$(($RANDOM % $arr_len)) #selecting random index from 0 to array length
  echo "${activities[$indx]}"

}

# Main script
echo "hello GitHub"

read -p "What do they call you in this grand adventure of life? " name

activity=$(select_random_activity)

echo "Hi" $name , "would you like to play" $activity "today ?"
read -p "Answer    (yes/no): " answer

if [ "$answer" == "yes" ]; then 
   echo "Awesome! Let's go $activity !"
else
  echo "Oh, maybe another time, Have a great day, $name!"
fi


