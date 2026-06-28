# Lazysed
A sed wrapper for lazy people.

## Install

git clone https://github.com/Gr4yWolf/lazysed.git

cd lazysed

chmod +x install.sh

./install.sh
## Now you can use this script easily with sr
sr = sed remove and sed replace
## Examples

Replace text

sr Thiha Gr4y_Wolf Test.txt

Replace text with spaces

sr /Thiha Htun/ /Gr4y Wolf/ Test.txt

Remove empty lines

sr -e Test.txt

Remove line range

sr -l1 to l3 Test.txt
sr -1 to 3 Test.txt

Remove specific lines

sr -l1 l3 Test.txt
sr -1 3 Test.txt
you can use withou -l , if you are so lazy.
