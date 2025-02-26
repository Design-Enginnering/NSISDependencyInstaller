; https://github.com/rc-chuah/NSISDependencyInstaller

; MUI 1.67 Compatible ------
!include "MUI.nsh"
!include "x64.nsh"
!include "LogicLib.nsh"
!include "CodeDependencies.nsh"

; Requires dxwebsetup.exe (See CodeDependencies.nsh)
;!define Dependency_Path_DirectX "dependencies\"

; Helper Defines
!define PRODUCT_NAME "MyProgram"
!define PRODUCT_VERSION "1.0.0.0"
!define PRODUCT_PUBLISHER "Nullsoft Scriptable Install System (NSIS)"
!define PRODUCT_SETUP_VERSION "1.0.0.0"
!define PRODUCT_EXE_NAME "MyProg.exe"
!define PRODUCT_EXE_ARM64_NAME "MyProg-Arm64.exe"
!define PRODUCT_EXE_x64_NAME "MyProg-x64.exe"
!define PRODUCT_COPYRIGHT "Copyright (C) Nullsoft Scriptable Install System (NSIS)"
!define PRODUCT_COMMENTS "This installation was built with NSIS."
!define PRODUCT_DESCRIPTION "MyProgram Setup"
!define PRODUCT_WEB_SITE "https://nsis.sourceforge.io/Main_Page"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\${PRODUCT_EXE_NAME}"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

Unicode true
SetCompressor /SOLID lzma
RequestExecutionLevel admin

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome Page
!insertmacro MUI_PAGE_WELCOME
; Directory Page
!insertmacro MUI_PAGE_DIRECTORY
; Start Menu Page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "${PRODUCT_NAME}"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles Page
!insertmacro MUI_PAGE_INSTFILES
; Finish Page
!define MUI_FINISHPAGE_RUN "$INSTDIR\${PRODUCT_EXE_NAME}"
!insertmacro MUI_PAGE_FINISH

; Uninstaller Pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language Files
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Armenian"
!insertmacro MUI_LANGUAGE "Asturian"
!insertmacro MUI_LANGUAGE "Basque"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Corsican"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Esperanto"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Georgian"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Hindi"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Pashto"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "ScotsGaelic"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Tatar"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Vietnamese"
!insertmacro MUI_LANGUAGE "Welsh"

; Reserve Files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI End ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
!system 'mkdir ".\bin"'
OutFile ".\bin\${PRODUCT_NAME}-${PRODUCT_VERSION}-Setup.exe"
InstallDir "$PROGRAMFILES64\${PRODUCT_NAME}"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

; Version Info
VIFileVersion "${PRODUCT_SETUP_VERSION}"
VIProductVersion "${PRODUCT_VERSION}"
VIAddVersionKey /LANG=0 "ProductName" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=0 "OriginalFilename" "${PRODUCT_NAME}-${PRODUCT_VERSION}-Setup.exe"
VIAddVersionKey /LANG=0 "Comments" "${PRODUCT_COMMENTS}"
VIAddVersionKey /LANG=0 "CompanyName" "${PRODUCT_PUBLISHER}"
VIAddVersionKey /LANG=0 "LegalCopyright" "${PRODUCT_COPYRIGHT}"
VIAddVersionKey /LANG=0 "FileDescription" "${PRODUCT_DESCRIPTION}"
VIAddVersionKey /LANG=0 "FileVersion" "${PRODUCT_SETUP_VERSION}"
VIAddVersionKey /LANG=0 "ProductVersion" "${PRODUCT_VERSION}"

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
  ; Comment Out Macros To Disable Installing Them
  !insertmacro Dependency_AddDotNet35
  !insertmacro Dependency_AddDotNet40
  !insertmacro Dependency_AddDotNet45
  !insertmacro Dependency_AddDotNet46
  !insertmacro Dependency_AddDotNet47
  !insertmacro Dependency_AddDotNet48
  ;!insertmacro Dependency_AddDotNet481

  !insertmacro Dependency_AddNetCore31
  !insertmacro Dependency_AddNetCore31Asp
  !insertmacro Dependency_AddNetCore31Desktop
  !insertmacro Dependency_AddDotNet50
  !insertmacro Dependency_AddDotNet50Asp
  !insertmacro Dependency_AddDotNet50Desktop
  !insertmacro Dependency_AddDotNet60
  !insertmacro Dependency_AddDotNet60Asp
  !insertmacro Dependency_AddDotNet60Desktop
  !insertmacro Dependency_AddDotNet70
  !insertmacro Dependency_AddDotNet70Asp
  !insertmacro Dependency_AddDotNet70Desktop
  !insertmacro Dependency_AddDotNet80
  !insertmacro Dependency_AddDotNet80Asp
  !insertmacro Dependency_AddDotNet80Desktop
  !insertmacro Dependency_AddDotNet90
  !insertmacro Dependency_AddDotNet90Asp
  !insertmacro Dependency_AddDotNet90Desktop

  !insertmacro Dependency_AddVC2005
  !insertmacro Dependency_AddVC2008
  !insertmacro Dependency_AddVC2010
  !insertmacro Dependency_AddVC2012
  ;!insertmacro Dependency_ForceX86 True ; Force 32-Bit Install Of Next Dependencies
  !insertmacro Dependency_AddVC2013
  ;!insertmacro Dependency_ForceX86 False ; Disable Forced 32-Bit Install Again
  !insertmacro Dependency_AddVC2015To2022

  ;!insertmacro Dependency_AddDirectX

  !insertmacro Dependency_AddSql2008Express
  !insertmacro Dependency_AddSql2012Express
  !insertmacro Dependency_AddSql2014Express
  !insertmacro Dependency_AddSql2016Express
  !insertmacro Dependency_AddSql2017Express
  !insertmacro Dependency_AddSql2019Express
  !insertmacro Dependency_AddSql2022Express

  !insertmacro Dependency_AddWebView2

  !insertmacro Dependency_AddAccessDatabaseEngine2010
  !insertmacro Dependency_AddAccessDatabaseEngine2016
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite on
  ; In Order Of Preference, We Want To Install:
  ; - Arm64 Binaries On Arm64 Systems
  ; - Else If, x64 Binaries On x64-Compatible Systems
  ; - Else, x86 Binaries
  ${If} ${IsNativeARM64}
    ; Place All Arm64-Specific Files Here.
    File "/oname=${PRODUCT_EXE_NAME}" "example\${PRODUCT_EXE_ARM64_NAME}"
  ${ElseIf} ${RunningX64}
    ; Place All x64-Specific Files Here.
    File "/oname=${PRODUCT_EXE_NAME}" "example\${PRODUCT_EXE_x64_NAME}"
  ${Else}
    ; Place All x86-Specific Files Here.
    File "example\${PRODUCT_EXE_NAME}"
  ${EndIf}

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\${PRODUCT_NAME}.lnk" "$INSTDIR\${PRODUCT_EXE_NAME}"
  CreateShortCut "$DESKTOP\${PRODUCT_NAME}.lnk" "$INSTDIR\${PRODUCT_EXE_NAME}"
  CreateShortCut "$QUICKLAUNCH\${PRODUCT_NAME}.lnk" "$INSTDIR\${PRODUCT_EXE_NAME}"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -AdditionalIcons
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  ${If} ${RunningX64}
    SetRegView 64
    WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\${PRODUCT_EXE_NAME}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\${PRODUCT_EXE_NAME}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  ${Else}
    SetRegView 32
    WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\${PRODUCT_EXE_NAME}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\${PRODUCT_EXE_NAME}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
    WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  ${EndIf}
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  !insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\${PRODUCT_EXE_NAME}"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Website.lnk"
  Delete "$QUICKLAUNCH\${PRODUCT_NAME}.lnk"
  Delete "$DESKTOP\${PRODUCT_NAME}.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\${PRODUCT_NAME}.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR"

  ${If} ${RunningX64}
    SetRegView 64
    DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
    DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  ${Else}
    SetRegView 32
    DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
    DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  ${EndIf}
  SetAutoClose true
SectionEnd