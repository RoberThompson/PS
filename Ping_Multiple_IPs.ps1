# Define the base IP address
$baseIP = "192.168.1."

# Define the range of IP addresses you want to ping
$startRange = 1
$endRange = 254  # Adjust this range as needed

# Loop through the IP addresses and ping each one
for ($i = $startRange; $i -le $endRange; $i++) {
    $ip = $baseIP + $i
    $result = Test-Connection -ComputerName $ip -Count 1 -ErrorAction SilentlyContinue
    if ($result) {
        Write-Host "Ping successful to $ip"
    } else {
        Write-Host "Ping failed to $ip"
    }
}
