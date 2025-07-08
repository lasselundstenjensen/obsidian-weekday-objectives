#!/bin/bash

# Specify the directory where the markdown files will be created
#output_dir="."
output_dir="$HOME/git/REPO_NAME"

# Step 1: Collect all weekdays (Monday to Friday) of the current week into a list
dates=()

# Get the date for the current week's Monday
monday_timestamp=$(date -v -$(($(date +%u)-1))d +%s)

# Generate dates for Monday through Friday (add 0-4 days to Monday)
for i in {0..4}; do
    # Add i days to Monday's timestamp (86400 seconds = 1 day)
    day_timestamp=$((monday_timestamp + i*86400))
    # Convert timestamp back to YYYY-MM-DD format
    weekday=$(date -r $day_timestamp '+%Y-%m-%d')
    dates+=("$weekday")
done

# Step 2: Iterate over the list and create a file for each date
for current_date in "${dates[@]}"; do
    filename="${current_date}.md"
    filepath="${output_dir}/${filename}"
    cat << EOF > "$filepath"
**Objectives:**

 - [ ] todo

**Interrupts:**

 - [ ] N/A

**Unplanned:**

 - [ ] N/A
EOF
done

