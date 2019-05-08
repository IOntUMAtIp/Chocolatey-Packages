$ErrorActionPreference = 'Stop';

$packageName = 'hain'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hainproject/hain/releases/download/v0.7.0-beta.1/Hain-ia32-v0.7.0-beta.1.zip'
$checksum = '6072e0ef4f00a3f671287451de25665cc12749fd8dffc5c51b9a4504570b817a'
$checksumType = 'sha256'
$url64 = 'https://github.com/hainproject/hain/releases/download/v0.7.0-beta.1/HainSetup-x64-v0.7.0-beta.1.exe'
$checksum64 = 'e49e938ec09066de1bf9972b3afee98fa08872a4fb2fd274588b40e898aa1a69'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
-ValidExitCodes "$validExitCodes"
