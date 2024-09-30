## How to Use This Bash Script

1. **Save the Script**:
   - Save the following script in a file named `create_project_structure.sh`:

2. **Make the script executable**:
   - Run the following command in the terminal to give execution permission to the script:

   ```bash
   chmod +x create_project_structure.sh
    ```
3. **Run the Script**:
   - Run the script in the terminal:

    ```bash
   ./create_project_structure.sh
    ```

4. **Setup file**:
   - The content of the file will be the following:

   ```python
   from setuptools import setup, find_packages

    setup(
        name="src",
        version="0.1",
        packages=find_packages()
    )

## How to Execute the `create_project_structure.sh` Script in a New Project

Instead of copying the `create_project_structure.sh` script into every project, you can keep the script in a central location or fetch it from a remote repository. Here are several methods to make your workflow more efficient.

### Option 1: Store the Script in a Central Location on Your Machine

1. **Save the Script in a Central Location**:
   - Save the `create_project_structure.sh` script in a folder such as `~/scripts`:
   
     ```bash
     mkdir -p ~/scripts
     mv create_project_structure.sh ~/scripts
     ```

2. **Make the Script Executable**:
   
     ```bash
     chmod +x ~/scripts/create_project_structure.sh
     ```

3. **Add the Scripts Folder to Your `PATH`** (Optional):
   - Edit your `.bashrc` or `.zshrc` file to include the `scripts` folder in your `PATH`:
   
     ```bash
     nano ~/.bashrc  # For Bash users
     # OR
     nano ~/.zshrc   # For Zsh users
     ```

   - Add this line to the file:
   
     ```bash
     export PATH="$HOME/scripts:$PATH"
     ```

   - Reload your terminal settings:
   
     ```bash
     source ~/.bashrc  # For Bash
     # OR
     source ~/.zshrc   # For Zsh
     ```

4. **Run the Script in Any Project**:
   - Now, whenever you start a new project, navigate to the project folder and simply run the script:
   
     ```bash
     create_project_structure.sh
     ```

### Option 2: Create a Wrapper Script to Call the `.sh` File from a Central Location

1. **Store the Script in a Central Location**:
   - As in Option 1, save the `create_project_structure.sh` in `~/scripts` or another central location.

2. **Create a Wrapper Script in the Project Folder**:
   - In the new project folder, create a small wrapper script called `run_structure_setup.sh`:
   
     ```bash
     nano run_structure_setup.sh
     ```

   - Add the following content to call the centralized script:
   
     ```bash
     #!/bin/bash
     ~/scripts/create_project_structure.sh
     ```

   - Make the wrapper script executable:
   
     ```bash
     chmod +x run_structure_setup.sh
     ```

3. **Run the Wrapper Script**:
   - Execute the wrapper script to set up the project structure:
   
     ```bash
     ./run_structure_setup.sh
     ```

### Option 3: Fetch the Script from a Remote Repository

1. **Store the Script in a Remote Repository**:
   - Push the `create_project_structure.sh` script to a GitHub repository (e.g., `https://github.com/your-username/scripts-repo`).

2. **Download and Run the Script in One Command**:
   - Use `curl` or `wget` to fetch and execute the script directly from the remote repository:
   
     ```bash
     bash <(curl -s https://raw.githubusercontent.com/Jesus-Almansa/Folder_Structure/main/create_project_structure.sh
     )
     ```
   
     Or with `wget`:
   
     ```bash
     wget -qO- https://raw.githubusercontent.com/Jesus-Almansa/Folder_Structure/main/create_project_structure.sh
     ```

https://raw.githubusercontent.com/Jesus-Almansa/Folder_Structure/main/create_project_structure.sh: This URL points directly to the raw content of your shell script file on GitHub.

bash <(curl -s URL): This command uses curl to download the script and execute it directly in bash.

wget -qO- URL | bash: This command uses wget to download the script and pipe it into bash.

- **Option 1**: Store the script locally and add it to your `PATH` so you can call it from any directory.
- **Option 2**: Create a small wrapper script in your project that calls the main script from a centralized location.
- **Option 3**: Fetch the script from a GitHub repository or another remote location and execute it directly.

These options allow you to set up your project structure more efficiently without copying the script every time.
