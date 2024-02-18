# Say you have a command that fails rarely. In order to debug it you need to capture its output but it can be time consuming to get a failure run.
# Write a bash script that runs the following script until it fails and captures its standard output and error streams to files and prints everything at the end.
# Bonus points if you can also report how many runs it took for the script to fail.

#!/usr/bin/env bash

output_file="output.log"

while true; do
	if ! ./script.sh >>"$output_file" 2>&1; then
		echo "error, please see $output_file"
		break
	fi
done
