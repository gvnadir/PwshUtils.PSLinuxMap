# PwshUtils.PSLinuxMap

A PowerShell utility module that provides a side-by-side comparison of common commands between Windows and Linux.  
Ideal for sysadmins, cross-platform developers, and anyone switching between environments.

---

## 📦 Module Overview

This module provides a single cmdlet:

- `Get-UtilPSLinuxMap`: Returns a list of equivalent PowerShell/Windows and Linux commands with descriptions.

The comparison covers common operations such as:
- Ping
- Traceroute
- Port checks
- Port scanning
- Local connection status

---

## 🚀 Usage

### 1. Clone and import the module

First, clone the repository (you can change the path if you use a different folder):

```powershell
git clone https://github.com/tuo-utente/PwshUtils.PSLinuxMap "$HOME\Git\PwshUtils.PSLinuxMap"
```

Make sure the path is included in your PowerShell module search path:

```powershell
$env:PSModulePath += ";$HOME\Git"
```

To make this change permanent, add that line to your PowerShell profile:

```powershell
notepad $PROFILE
```

Then import the module:

```powershell
Import-Module PwshUtils.PSLinuxMap
```

### 2. View the mapping table

```powershell
Get-UtilPSLinuxMap | Format-Table
```

#### Example output:

| Operation                | Windows Command                           | Linux Command                        | Description                          |
|--------------------------|--------------------------------------------|--------------------------------------|--------------------------------------|
| Ping an IP               | ping 192.168.1.10                          | ping 192.168.1.10                    | Check if host is reachable           |
| Traceroute               | tracert 192.168.1.10                       | traceroute 192.168.1.10             | Show hops to host                    |
| Port check (TCP)         | Test-NetConnection -ComputerName ...       | nc -zv ...                          | Check if a port is open              |

You can filter the results:

```powershell
Get-UtilPSLinuxMap | Where-Object { $_.Operation -like "*Port*" }
```

---

## 📁 Files Included

- `PSLinuxMap.csv`: The mapping data file
- `PwshUtils.PSLinuxMap.psm1`: PowerShell module script
- `PwshUtils.PSLinuxMap.psd1`: Module manifest
- `README.md`: This documentation

---

## 🔧 Features

- ✅ Cross-platform command comparison
- 🔄 Quickly reference equivalent tasks
- 🧠 Great for training and troubleshooting

---

## 📌 Requirements

- PowerShell 5.1 or newer
- Works on Windows, macOS, and Linux

---

## 💡 Why I Built This

I constantly switch between PowerShell and Linux and wanted a consistent, searchable reference for common network tasks.

---

## 📜 License

MIT License — free to use, modify, and share 😎.
