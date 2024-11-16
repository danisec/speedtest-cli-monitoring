<p align="center"><img src="https://raw.githubusercontent.com/danisec/assets/refs/heads/main/images/speedtest-cli-monitoring/speedtest-cli-monitoring.png" width="auto" height="auto" alt="Speedtest CLI Monitoring"></p>

# Speedtest CLI Monitoring Internet

Speed ​​test by Ookla CLI (Command Line Interface) which monitors the internet every minute interval such as (latency, jitter, download, upload and packet loss) for Windows.

## Table of Contents

- [Installation](#installation)
- [Modify Interval Minutes](#modify-interval-minutes)

## Installation

1. Download zip file this repository.
2. Extract the zip file.
3. Copy the path of the extracted folder or open the extracted folder path in the terminal / command prompt.
4. Run the following command in the terminal / command prompt.

```bash
.\ping.ps1
```

## Modify Interval Minutes

1. Open the `ping.ps1` file in the extracted folder.
2. Change the value of the `$interval` variable to the desired interval in minutes.

```powershell
# Interval minutes: 15
$intervalMinutes = 15
```

3. Save the file.
