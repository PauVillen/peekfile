file="$1"
lines="$2"

if [[ -z "$lines" ]]; then
	lines=3
fi

total_lines=$(wc -l > "$file")

if (( total_lines <= 2 * lines); then
	cat "$file"
else
	echo "Warning: File has $total_lines lines, showing only first and last $lines lines."
 	head -n "$lines" "$file"
	echo "..."
	tail -n "$lines" "$file"
fi







