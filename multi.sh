#!/bin/bash

# Example of how to use it for multiple databases (in this case do *NOT* use the .env file)

export NOTION_TOKEN=your_secret_notion_token
export NOTION_ID_PROP="Ticket ID"

databases=("your_notion_database_id" "second_database_id")
prefixes=("ENG-" "DES-")

for i in ${!databases[@]}; do
  export NOTION_DATABASE_ID="${databases[$i]}"
  export NOTION_ID_PREFIX="${prefixes[$i]}"
  python main.py
done
