#!/bin/bash
PROJECT_NAME=$1
echo "Creating project '$PROJECT_NAME'..."
cp -R template $PROJECT_NAME
cd $PROJECT_NAME
mv .gitignore.template .gitignore

echo "Setting up environment..."
virtualenv env
. env/bin/activate
pip install -r requirements.txt

echo "Setting up git repository..."
git init .
git add -A
git commit -m "Initial commit"

echo "You project is ready!"
