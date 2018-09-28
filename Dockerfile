FROM microsoft/windowsservercore:ltsc2016
SHELL ["powershell", "-command"]
ADD https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs925/gs925w64.exe .
RUN Start-Process -Wait -FilePath './gs925w64.exe' -ArgumentList @('/NCRC','/S')
