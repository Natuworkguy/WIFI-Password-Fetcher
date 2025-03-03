# Wi-Fi Password Retriever Script

This PowerShell script retrieves the saved Wi-Fi profiles on a Windows machine along with their passwords (if available) and saves them to a text file. It utilizes the `netsh` command to extract the Wi-Fi profiles and their respective passwords, ensuring that all relevant information is extracted and written to a file for later use.

## Features

- Lists all saved Wi-Fi profiles on your machine.
- Retrieves the Wi-Fi password for each profile if available.
- Saves the results to a `WifiPasswords.txt` file in UTF-8 encoding.
- Handles any potential errors and provides feedback.

## Prerequisites

- PowerShell 5.0 or higher.
- Administrative privileges to retrieve Wi-Fi profile passwords.

## How to Use

1. Download the main.ps1 file from this repository.
2. Open **PowerShell** as Administrator.
3. Run the downloaded script.

Once executed, the script will generate a `WifiPasswords.txt` file containing the names of Wi-Fi profiles and their corresponding passwords.

## Output

The script will output to a file named `WifiPasswords.txt` with the following format:

```
Wi-Fi Profile Name 1: password1
Wi-Fi Profile Name 2: password2
Wi-Fi Profile Name 3: No password found
```

If a Wi-Fi profile does not have a saved password, it will display "No password found."

## License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for details.

## Disclaimer

- This script is intended for **educational purposes only**.
- **I am not responsible for any illegal activity** that may occur from the use of this script. Ensure that you have permission to access the Wi-Fi passwords from the networks you are retrieving information from.
- Unauthorized access to Wi-Fi networks is **illegal** and **unethical**. Use this script responsibly.
