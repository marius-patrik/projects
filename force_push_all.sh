#!/bin/bash

# Function to force push a repo
force_push_repo() {
    local dir=$1
    echo "--------------------------------------------------"
    echo "Force pushing $dir..."
    
    # Store original directory
    local original_dir=$(pwd)
    
    # Go to directory
    cd "$dir" || { echo "Failed to cd into $dir"; return 1; }
    
    # Check if git repo
    if [ ! -d ".git" ] && [ ! -f ".git" ]; then
        echo "$dir is not a git repository"
        cd "$original_dir"
        return 1
    fi

    # Add all changes
    git add .

    # Commit if there are changes
    if ! git diff-index --quiet HEAD --; then
        echo "Committing changes..."
        git commit -m "${COMMIT_MESSAGE:-Update}"
    else
        echo "No changes to commit"
    fi

    # Safety confirmation before force push
    echo ""
    read -p "Force push $dir? (y/N): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Skipping force push for $dir"
        cd "$original_dir"
        return 0
    fi

    # Force push to origin
    echo "Force pushing to origin..."
    git push -u origin main --force
    
    # Return to original directory
    cd "$original_dir"
    echo "Finished force pushing $dir"
}

# Get commit message from arguments
COMMIT_MESSAGE="$1"

# Top-level submodules
submodules=("libraries/liqid/liqid-components" "libraries/liqid/liqid-ui" "apps/liqid-docs" "apps/liqid-showcase" "apps/phonebooth" "apps/tradebot" "apps/pokedex")

# Force push submodules
for sub in "${submodules[@]}"; do
    force_push_repo "$sub"
done

# Force push root repo
force_push_repo "."

echo "--------------------------------------------------"
echo "All repositories have been force pushed!"

