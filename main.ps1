try {
    $profiles = netsh wlan show profile | Select-String "    All User Profile     :" | ForEach-Object {
        $_ -replace '    All User Profile     :', '' | ForEach-Object { $_.Trim() }
    }
    $output = @()
    foreach ($profile in $profiles) {
        $key = netsh wlan show profile name="$profile" key="clear" | Select-String "    Key Content            :" | ForEach-Object {
            $_ -replace '    Key Content            : ', '' | ForEach-Object { $_.Trim() }
        }
        if ($key) {
            $output += "${profile}: ${key}"
        } else {
            $output += "${profile}: No password found"
        }
    }
    $output | Out-File -FilePath "WifiPasswords.txt" -Encoding UTF8
    Write-Output "Wi-Fi passwords saved to WifiPasswords.txt"
} catch {
    Write-Output "ERROR: An error occurred while retrieving Wi-Fi passwords."
}
