$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
   $dest = "$Env:SYSTEMROOT\ShellNew"
   New-Item $dest -ItemType directory -Force
   Copy-Item -Path $PSScriptRoot\Templates\* -Destination $dest
   regedit $PSScriptRoot\ShellNew.reg
} else {
   echo "This script must be run as Administrator."
   pause
   exit 1
}
