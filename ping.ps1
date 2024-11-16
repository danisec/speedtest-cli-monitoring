# Interval minutes: 15
$intervalMinutes = 15

# Loop to run speedtest every interval
while ($true) {
    # Run speedtest
    $speedTestResult = speedtest -f json | ConvertFrom-Json

    # Output the result
    Write-Output "============================="
    Write-Output "Waktu: $(Get-Date)"
    Write-Output "Server: $($speedTestResult.server.name) - $($speedTestResult.server.location)"
    Write-Output "ISP: $($speedTestResult.isp)"
    Write-Output "Latency (Ping): $($speedTestResult.ping.latency) ms"
    Write-Output "Jitter: $($speedTestResult.ping.jitter) ms"
    Write-Output "Download: $([math]::Round($speedTestResult.download.bandwidth / 125000, 2)) Mbps"
    Write-Output "Upload: $([math]::Round($speedTestResult.upload.bandwidth / 125000, 2)) Mbps"
    Write-Output "Packet Loss: $($speedTestResult.packetLoss)%"
    Write-Output "============================="
    Write-Output ""

    # Wait for the next interval
    Start-Sleep -Seconds ($intervalMinutes * 60)
}
