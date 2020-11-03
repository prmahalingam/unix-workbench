readme : guessinggame.sh
	echo "__Unix Workbench Peer-graded Assignment: Bash, Make, Git, and GitHub__" > README.md
	echo "\nThis version of makefile was run on:" >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh : " >> README.md
	cat guessinggame.sh | wc -l | grep -Eo '[0-9]{1,}' >> README.md