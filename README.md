---

## Script: start_urgent.sh

This script is designed to facilitate the installation and execution of the `eDEX-UI-Linux-x86_64.AppImage` application, a hacking terminal theme developed by Sh-bharat.

### Usage Instructions:

#### Running the Script:

1. **Download the Script:**
   - Ensure the `start_urgent.sh` script is downloaded and placed in a directory of your choice.

2. **Execute the Script:**
   - Open a terminal.
   - Navigate to the directory containing `start_urgent.sh` using the `cd` command.
   - Run the script using the command `./start_urgent.sh`.
   - Ensure you have necessary permissions to execute the script (`chmod +x start_urgent.sh` if required).

#### Script Explanation:

The script performs the following actions:

```bash
#!/usr/bin/bash

# Install required dependencies
sudo apt-get install figlet
sudo apt-get install libfuse2
figlet Sh-bharat

# Check if the eDEX-UI AppImage exists
if [ -f "eDEX-UI-Linux-x86_64.AppImage" ]; then
    echo "Directory Present"
else
    echo "Directory not Present"
    git clone https://github.com/Sh-bharat/edEX-UI-Linux86_64.git
fi

# Provide execute permissions to the AppImage
chmod a+x eDEX-UI-Linux-x86_64.AppImage

# Configure kernel parameter for user namespace cloning
sudo sysctl kernel.unprivileged_userns_clone=1

# Run the eDEX-UI AppImage
sudo ./eDEX-UI-Linux-x86_64.AppImage --no-sandbox
```

#### Script Breakdown:

1. **Dependency Installation:**
   - Installs `figlet` and `libfuse2` via `apt-get` package manager.

2. **Displaying a Banner:**
   - Utilizes `figlet` to display the text "Sh-bharat" in ASCII art.

3. **Checking for AppImage:**
   - Checks if the `eDEX-UI-Linux-x86_64.AppImage` file exists.
   - If not present, it clones the repository from Sh-bharat's GitHub account.

4. **Setting Permissions:**
   - Grants execute permissions to the `eDEX-UI-Linux-x86_64.AppImage` file.

5. **Kernel Configuration:**
   - Sets the `kernel.unprivileged_userns_clone` parameter to `1`.

6. **Launching eDEX-UI:**
   - Runs the `eDEX-UI-Linux-x86_64.AppImage` application without sandboxing.

### Important Notes:

- **Kernel Configuration:**
  - Modifying kernel parameters requires appropriate permissions and may impact system stability. Proceed cautiously.

- **Cloning Repository:**
  - Ensure a stable internet connection for successful cloning of the repository.

- **Execution Permissions:**
  - Confirm that the script has execution permissions (`chmod +x start_urgent.sh`).

- **Application Execution:**
  - The script assumes the presence of the `eDEX-UI-Linux-x86_64.AppImage` file in the same directory.
  - Adjust the path if the AppImage is located in a different directory.

---
