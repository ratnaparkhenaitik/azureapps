if(-not(Test-Path -Path C:\temp))
{

    New-Item -Path C:\temp -ItemType Directory
}
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/ratnaparkhenaitik/azureapps/master/fslogic_setup.reg' -OutFile C:\temp\fslogic.reg
regedit.exe /s C:\temp\fslogic.reg
