$list = Get-Content "packages"

$clnt = New-Object System.Net.WebClient

foreach($url in $list)
{
    $filename = [System.IO.Path]::GetFileName($url)
    $file = [System.IO.Path]::Combine($pwd.Path, $filename)
    Write-Host $url
    $clnt.DownloadFile("http://dl.xonotic.fps.gratis/"+$url, $file)
}
