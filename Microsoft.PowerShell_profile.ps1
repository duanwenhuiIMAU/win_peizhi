set-alias ll get-childitem
set-alias run start-process
set-alias mk new-item
## 打开本文件
function open_powershell_profile {code C:\Users\duanw\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1}
set-alias pwfile open_powershell_profile
# 用资源管理器打开本目录
set-alias xpl explorer
# 用资源管理器打开 C:\Users\duanw
function setXplUsr {explorer C:\Users\duanw}
set-alias xu setXplUsr
# 进入超级管理员
function admin {Start-Process powershell -Verb runAs}
set-alias powershellAdmin admin
function  powershell {Start-Process powershell}
set-alias pw powershell
# function setXplVS {explorer C:\Users\duanw}
# set-alias xu setXplUsr
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
function Cdmongo {Set-Location ~}
set-alias cdmongo Cdmongo
