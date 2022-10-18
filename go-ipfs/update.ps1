Import-Module au

$releases = "https://dist.ipfs.tech/#kubo"

function global:au_SearchReplace {
	@{
		".\legal\VERIFICATION.txt" = @{
			"(?i)(\s+x32:).*"               = "`${1} $($Latest.URL32)"
			"(?i)(\s+x64:).*"               = "`${1} $($Latest.URL64)"
			"(?i)(^\s*checksum\s*type\:).*" = "`${1} $($Latest.ChecksumType32)"
			"(?i)(^\s*checksum32\:).*"      = "`${1} $($Latest.Checksum32)"
			"(?i)(^\s*checksum64\:).*"      = "`${1} $($Latest.Checksum64)"
		}
		".\go-ipfs.nuspec" = @{
			"(?i)(^\s*<releaseNotes>)(.*)" = "`${1}https://github.com/ipfs/kubo/blob/v$($Latest.Version)/CHANGELOG.md</releaseNotes>"
		}
	}
}

function global:au_BeforeUpdate { Get-RemoteFiles -Purge }

function global:au_GetLatest {
	$version = "0.17.0"
	$url32 = "https://github.com/galargh/kubo/releases/download/v0.17.0/kubo_v0.17.0_windows-386.zip"
	$url64 = "https://github.com/galargh/kubo/releases/download/v0.17.0/kubo_v0.17.0_windows-amd64.zip"

	return @{ Version = $version; URL32 = $url32; URL64 = $url64 }
}

if ([bool]::Parse($Env:NoCheckChocoVersion)) {
	Update-Package -ChecksumFor none -NoCheckChocoVersion
}
else {
	Update-Package -ChecksumFor none
}
