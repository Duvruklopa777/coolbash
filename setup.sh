#! /usr/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: No arguments provided."
  echo "dep - deploying; und - undeploying;"
  exit 1
else
  state=$1
fi

if [ $state = "dep" ]; then
  cd /c/Users/duvruklopa
  git clone https://github.com/Duvruklopa777/unix.git
  cd /c/Users/duvruklopa/unix
  npm install
  npm start
elif [ "$state" = "und" ] && [ -d "/c/Users/duvruklopa/unix" ]; then
  cd /c/Users/duvruklopa/unix
  npm i kill-port@2.0.1
  npx kill-port 8080
  npm uninstall kill-port
  cd /c/Users/duvruklopa
  rm -rf ~/unix
elif [ "$state" = "und" ]; then
  echo "Directory ~/unix does not exist."
else
  echo "Ooops, something went wrong"
fi
