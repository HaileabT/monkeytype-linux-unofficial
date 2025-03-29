#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color
FENCE_CHAR='='
FENCE_AMOUNT=50

printf "${RED}"
echo "= = = = = = = = = = ="
echo "= = = = = = = = = = ="
echo "= = = = = = = = = = ="
echo "= = = = + = + = = = ="
echo "= = = = + + + = = = ="
echo "= = = = + = + = = = ="
echo "= = = = = = = = = = ="
echo "= = = = = = = = = = ="
echo "= = = = = = = = = = ="
printf "${NC}"

echo "Installing electron..."
npm install
echo "Electron installed successfully."

printf "${RED}"
for ((i=0; i<FENCE_AMOUNT; i++)); do
  printf '%s' "$FENCE_CHAR"
done
echo 
printf "${NC}"

echo "Building the app..."
npm run build
echo "App built successfully."

printf "${RED}"
for ((i=0; i<FENCE_AMOUNT; i++)); do
  printf '%s' "$FENCE_CHAR"
done
echo 
printf "${NC}"

echo "Making desktop shortcut"
cp ./desktop/monkeytype.desktop ~/.local/share/applications/
echo "Desktop shortcut created."

printf "${RED}"
for ((i=0; i<FENCE_AMOUNT; i++)); do
  printf '%s' "$FENCE_CHAR"
done
echo 
printf "${NC}"

echo "Monkeytype has been installed."
