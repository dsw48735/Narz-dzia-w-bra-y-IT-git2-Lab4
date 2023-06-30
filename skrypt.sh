#!/bin/bash

if [ "$1" == "--date" ]; then
  echo $(date)
elif [ "$1" == "--logs" ]; then
  if [ -z "$2" ]; then
    num_logs=100
  else
    num_logs=$2
  fi

  for ((i=1; i<=num_logs; i++)); do
    filename="log${i}.txt"
    echo -e "Nazwa pliku: $filename\nNazwa skryptu: $0\nData: $(date)" > $filename
  done
=======
  echo $(date)