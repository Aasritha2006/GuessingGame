#!/bin/bash

# Function to check the user's guess
guess_number() {
    local correct_count=$(ls -1 | wc -l)  # Count the number of files in the current directory
    local guess=0
    
    # Ask for a guess until it is correct
    while [ $guess -ne $correct_count ]; do
        echo "How many files are in the current directory?"
        read guess
        
        # Check if the guess is too high or too low
        if [ $guess -gt $correct_count ]; then
            echo "Your guess is too high. Try again!"
        elif [ $guess -lt $correct_count ]; then
            echo "Your guess is too low. Try again!"
        fi
    done

    echo "Congratulations! You guessed the correct number of files."
}

# Run the function
guess_number
