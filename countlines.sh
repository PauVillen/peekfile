for file in "$@"; do
  num_lines=$(wc -l < "$file")

  if (( num_lines == 0 )); then
    echo "$file has 0 lines."
  elif (( num_lines == 1 )); then
    echo "$file has 1 line."
  else
    echo "$file has $num_lines lines."
  fi
done