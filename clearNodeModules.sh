#!/bin/bash

function delete_node_modules {
  for file in "$1"/*; do
    if [[ -d "$file" ]]; then
      if [[ "$file" == *"/node_modules" ]]; then
        echo "Deletando $file"
        rm -rf "$file"
      else
        delete_node_modules "$file"
      fi
    fi
  done
}

delete_node_modules "$(pwd)"
