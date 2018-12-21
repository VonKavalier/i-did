# i-did
Little script to keep track of what you do everyday.

The idea is to keep track of things you've done, not to do. It's based on the ["Done List"](https://www.lifehack.org/articles/productivity/why-to-do-lists-dont-work-and-done-lists-do.html) principle.

It features a readable list with tasks grouped by days.

## Installation

1. Create a `idid.txt` file and put it where you want
2. Edit the script with the complete path of your `idid.txt` file
3. (optional) Make a symbolic link of the script to your PATH in order to start it from everywhere

## Usage

```
# Add a new thing you've done
$ ./idid.sh "Water the plants"
```

```
# Show last 1ast 10 lines of the file
$ ./idid.sh show
* Message sur le ticket d'hier pour dire qu'il etait résolu
* Investigation et apport d'une possible solution au ticket #39408
* Cloturation de 2 tickets abandonnés
* Amélioration de mon script idid
* Clôture d'un autre ticket abandonné

==============[21-12-2018]===============

* Cloturation du ticket #35451
* Water the plants
```

```
# Edit the file in case you made a mistake (from the $EDITOR global variable)
$ ./idid.sh edit
```
