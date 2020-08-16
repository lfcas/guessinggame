#!usr/bin/env bash
# File: guessinggame.sh

function getguess {
    number_of_files=$(ls | wc -l)

    echo "How many files are in the current directory?"
    read guess

    while [[ $number_of_files -ne $guess ]]
    do
        if [[ $number_of_files -gt $guess ]]
        then
            echo "Guess too low, try again"
        else
            echo "Guess too high, try again"
        fi

        read guess
    done

    echo "You guessed it, congratulations!"
}

getguess
