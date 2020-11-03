function guess_filenum {
    status=0
    while [[ $status -eq 0 ]]
    do
    	read guess
	    if [[ $guess -eq $filenum ]]
	    then
		    echo "You are right! Congratulations!"
            status=1
	    else
		    if [[ $guess -gt $filenum ]]
		    then
			    echo "Looks high... Next guess :"
		    else
			    echo "Looks low... Next guess :"
		    fi
	    fi
    done
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter :"
filenum=$(ls | wc -l)
guess_filenum