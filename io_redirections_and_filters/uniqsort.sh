#!/bin/bash

# Read words from input
while read -r word; do
    # Use associative array to track word occurrences
    ((word_count["$word"]++))
done

# Print words that occur exactly once
for word in "${!word_count[@]}"; do
    if [[ ${word_count["$word"]} -eq 1 ]]; then
        echo "$word"
    fi
done

