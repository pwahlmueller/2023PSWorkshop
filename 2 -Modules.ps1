##
## PowerShell Workshop
##
return 'You should not pass!'
#region Step 1 - Find Module

[system.Diagnostics.Process]::Start("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", "https://www.powershellgallery.com/packages?q=sql")

#endregion  Step 1 - Find Module

#region Step 2 - Get the Module
Install-Module -Name dbatools -Force
Install-Module -Name sqlserver -force -AllowClobber

(get-command -module dbatools).count
(get-command -module sqlserver).count

import-module dbatools -force
Import-Module sqlserver
#endregion Step 2
