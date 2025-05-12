Function Get-GistFile {
	param (
		[string]$Url
	)

	$fileName = $Url.Split("/")[-1]
	$cache = "$env:LOCALAPPDATA\PwshUtils\$fileName"

	try {
		if (-not (Test-Path (Split-Path $cache))) {
			New-Item -ItemType Directory -Path (Split-Path $cache) -Force | Out-Null
		}

		Invoke-WebRequest -Uri $url -OutFile $cache -ErrorAction Stop
	}
 catch {
		Write-Warning "Download failed. Using local copy if available."
	}

	if (Test-Path $cache) {
		Import-Csv $cache
	}
 else {
		throw "No CSV file available."
	}

}

Function Get-UtilPSLinuxMap {
	Get-GistFile -Url 'https://gist.githubusercontent.com/gvnadir/c9bcbc3350158726aaa67b1ae2103c91/raw/da3462197a1287bef7e03b8b8aa390ca97febb2d/PowerShellLinuxMap.csv'
}