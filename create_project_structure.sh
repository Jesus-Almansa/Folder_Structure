#!/bin/bash

# Define the directories and files you want to create
folders=("Notebooks" "data" "doc" "src" "src.egg-info")
files=(".gitignore" "README.md" "setup.py")

# Create the directories
for folder in "${folders[@]}"; do
    mkdir -p "$folder"
    echo "Created folder: $folder"
done

# Create the files
for file in "${files[@]}"; do
    touch "$file"
    echo "Created file: $file"
    
    # Add some initial content to each file
    if [ "$file" == "README.md" ]; then
        echo -e "# Project Title\n\nProject description goes here." > "$file"
    elif [ "$file" == ".gitignore" ]; then
        echo -e "# Add files or directories to ignore for version control" > "$file"
    elif [ "$file" == "setup.py" ]; then
        echo -e "from setuptools import setup, find_packages\n\nsetup(\n    name='your_project_name',\n    version='0.1.0',\n    packages=find_packages(where='src'),\n    package_dir={'': 'src'},\n    install_requires=[\n        # Add your project dependencies here\n    ],\n    author='Your Name',\n    description='A description of your project',\n    long_description=open('README.md').read(),\n    long_description_content_type='text/markdown',\n    url='https://github.com/your_github_username/your_project_repo',\n    classifiers=[\n        'Programming Language :: Python :: 3',\n        'License :: OSI Approved :: MIT License',\n        'Operating System :: OS Independent',\n    ],\n    python_requires='>=3.6',\n)" > "$file"
    fi
done

# Create __init__.py inside the src/ directory
touch src/__init__.py

echo "Project structure created successfully!"
