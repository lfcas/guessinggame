all: README.md

README.md:
	echo "# Guessing Game" > README.md
	date | cat >> README.md
	echo "  " >> README.md
	wc -l < guessinggame.sh >> README.md