#escape=`
#FROM microsoft/windowsservercore:1709_KB4074588
FROM microsoft/windowsservercore
RUN net user /add Andreslon
RUN net user Andreslon !QAZ2wsx
RUN net localgroup "Remote Desktop Users" Andreslon /add
RUN net localgroup "Administrators" Andreslon /add
RUN cmd /k reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v TemporaryALiC /t REG_DWORD /d 1
