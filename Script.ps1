Param(
    [string]$ConfigPath = ".\config.cfg",
    [string]$FolderPath = "C:\Users\$env:UserName\Downloads\",
    [string]$LogPath = "."
)

# Make sure you have the config.cfg in the same folder as the powershell script, you can add extensions and folder name there

$Config = Import-Csv -Path $ConfigPath
$Files = $FolderPath | Get-ChildItem
$LogName = "sdlog_$(Get-Date -Format MMddyyyy-hhmmss).txt"   
New-Item -Path $LogPath -Name $LogName

ForEach($Extension in $Config) {
    
    ForEach($File in $Files) {
        if($File.Extension -eq $Extension.Extension) {
            
            $DestinationPath = -join ($FolderPath,$Extension.Path)

            if(!(Test-Path $DestinationPath -PathType Container)) {
                
                New-Item -Path $DestinationPath -ItemType Directory
                
            }

            Move-Item (Join-Path $FolderPath $File) $DestinationPath -Force
            Add-Content -Path (Join-Path $LogPath $LogName) -Value "Moved <$File> from <$FolderPath> to <$DestinationPath>"
        }    
    }
}

if(!(Get-Content $LogName)){
    Remove-Item $LogName
}
