@echo off

:: List of packages to install (split across multiple lines for readability)
set packages=^
Apple.iTunes ^
Audacity.Audacity ^
Discord.Discord ^
Doist.Todoist ^
dotPDN.PaintDotNet ^
Dropbox.Dropbox ^
GIMP.GIMP ^
Git.Git ^
GitHub.GitHubDesktop ^
Google.Drive ^
IDRIX.VeraCrypt ^
KiCad.KiCad ^
Microsoft.VisualStudioCode ^
Mozilla.Firefox ^
Obsidian.Obsidian ^
OBSProject.OBSStudio ^
PuTTY.PuTTY ^
Rufus.Rufus ^
tailscale.tailscale ^
Valve.Steam ^
VideoLAN.VLC ^
Yubico.Authenticator ^
Yubico.YubikeyManager ^
Zoom.Zoom

for %%p in (%packages%) do (
    echo Checking if %%p is installed...
    winget list -e --id %%p > nul 2>&1
    if errorlevel 1 (
        echo Installing %%p...
        winget install -e --id %%p --silent --accept-package-agreements --accept-source-agreements
    ) else (
        echo %%p is already installed. Skipping...
    )
)

echo Install complete!

pause
