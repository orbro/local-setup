@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Reload environment variables to make sure the script can find choco
resetvars.vbs
call "%TEMP%\resetvars.bat"

choco install -y cloudfoundry-cli
choco install -y git
choco install -y jdk
choco install -y maven
choco install -y nodejs.install
choco install -y curl
choco install -y python2
choco install -y springtoolsuite

REM Reload environment variables to make sure the script can find npm
resetvars.vbs
call "%TEMP%\resetvars.bat"

npm install -g bower
npm install -g grunt-cli
