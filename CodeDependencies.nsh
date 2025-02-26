; https://github.com/rc-chuah/NSISDependencyInstaller

!include "x64.nsh"
!include "LogicLib.nsh"

!macro Dependency_ForceX86
!macroend

!macro Dependency_Add
!macroend

!macro Dependency_InitializeWizard
!macroend

!macro Dependency_PrepareToInstall
!macroend

!macro Dependency_CustomExecute
!macroend

!macro Dependency_UpdateReadyMemo
!macroend

!macro Dependency_NeedRestart
!macroend

!macro Dependency_IsX64
!macroend

!macro Dependency_String
!macroend

!macro Dependency_ArchSuffix
!macroend

!macro Dependency_ArchTitle
!macroend

!macro Dependency_IsNetCoreInstalled
!macroend

!macro Dependency_AddDotNet35
!macroend

!macro Dependency_AddDotNet40
!macroend

!macro Dependency_AddDotNet45
!macroend

!macro Dependency_AddDotNet46
!macroend

!macro Dependency_AddDotNet47
!macroend

!macro Dependency_AddDotNet48
!macroend

!macro Dependency_AddDotNet481
!macroend

!macro Dependency_AddNetCore31
!macroend

!macro Dependency_AddNetCore31Asp
!macroend

!macro Dependency_AddNetCore31Desktop
!macroend

!macro Dependency_AddDotNet50
!macroend

!macro Dependency_AddDotNet50Asp
!macroend

!macro Dependency_AddDotNet50Desktop
!macroend

!macro Dependency_AddDotNet60
!macroend

!macro Dependency_AddDotNet60Asp
!macroend

!macro Dependency_AddDotNet60Desktop
!macroend

!macro Dependency_AddDotNet70
!macroend

!macro Dependency_AddDotNet70Asp
!macroend

!macro Dependency_AddDotNet70Desktop
!macroend

!macro Dependency_AddDotNet80
!macroend

!macro Dependency_AddDotNet80Asp
!macroend

!macro Dependency_AddDotNet80Desktop
!macroend

!macro Dependency_AddDotNet90
!macroend

!macro Dependency_AddDotNet90Asp
!macroend

!macro Dependency_AddDotNet90Desktop
!macroend

!macro Dependency_AddVC2005
!macroend

!macro Dependency_AddVC2008
!macroend

!macro Dependency_AddVC2010
!macroend

!macro Dependency_AddVC2012
!macroend

!macro Dependency_AddVC2013
!macroend

!macro Dependency_AddVC2015To2022
!macroend

!macro Dependency_AddDirectX
!macroend

!macro Dependency_AddSql2008Express
!macroend

!macro Dependency_AddSql2012Express
!macroend

!macro Dependency_AddSql2014Express
!macroend

!macro Dependency_AddSql2016Express
!macroend

!macro Dependency_AddSql2017Express
!macroend

!macro Dependency_AddSql2019Express
!macroend

!macro Dependency_AddSql2022Express
!macroend

!macro Dependency_AddWebView2
!macroend

!macro Dependency_AddAccessDatabaseEngine2010
!macroend

!macro Dependency_AddAccessDatabaseEngine2016
!macroend

!ifdef Dependency_Path_DirectX
  File "${Dependency_Path_DirectX}dxwebsetup.exe"
!endif