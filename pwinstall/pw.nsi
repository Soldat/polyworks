; Script generated by the HM NIS Edit Script Wizard.
; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Soldat PolyWorks"
!define PRODUCT_VERSION "1.6.0.0"
!define PRODUCT_PUBLISHER "Copyright Anna Zajaczkowski"
!define PRODUCT_WEB_SITE "http://forums.soldat.pl"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Soldat PolyWorks.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "PW.ico"
!define MUI_UNICON "PW.ico"


; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "Readme.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES



; Finish page
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

!define SHCNE_ASSOCCHANGED 0x8000000
!define SHCNF_IDLIST 0

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "PWSetup.exe"
InstallDir "$PROGRAMFILES\Soldat PolyWorks"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
Section "MainSection" SEC01

  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "Soldat PolyWorks.exe"
  File "COMDLG32.OCX"
  File "MBMouse.ocx"
  File "mscomctl.ocx"
  File "polyworks.ini"
  File "PolyWorks Help.html"
  File "ReadMe.txt"
  File "PMS.ico"
  File "PFB.ico"
  SetOutPath "$SYSDIR"
  File "dx8vb.dll"
  File "MBMouse.ocx"
  File "mscomctl.ocx"
  File "COMDLG32.OCX"
  RegDLL "$SYSDIR\dx8vb.dll"
  RegDLL "$SYSDIR\MBMouse.ocx"
  RegDLL "$SYSDIR\mscomctl.ocx"
  RegDLL "$SYSDIR\COMDLG32.OCX"

  SetOutPath "$INSTDIR\BMPtoCUR"
  File "BMPtoCUR\BMP to CUR.exe"
  File "BMPtoCUR\ReadMe.txt"
  SetOutPath "$INSTDIR\gfx"
  File "gfx\titlebar_palette.bmp"
  File "gfx\tool_gfx.bmp"
  File "gfx\titlebar_texture.bmp"
  File "gfx\slider_arrow.bmp"
  File "gfx\pattern.bmp"
  File "gfx\tools.bmp"
  File "gfx\path.png"
  File "gfx\titlebar_preferences.bmp"
  File "gfx\titlebar_colorpicker.bmp"
  File "gfx\vertex8x8.bmp"
  File "gfx\titlebar_tools.bmp"
  File "gfx\titlebar_map.bmp"
  File "gfx\titlebar_main.bmp"
  File "gfx\color_picker.bmp"
  File "gfx\titlebar_properties.bmp"
  File "gfx\button_gfx.bmp"
  File "gfx\notfound.bmp"
  File "gfx\titlebar_display.bmp"
  File "gfx\objects.bmp"
  File "gfx\lines.bmp"
  File "gfx\colors.ini"
  File "gfx\sketch.bmp"
  File "gfx\rcenter.bmp"
  File "gfx\titlebar_waypoints.bmp"
  File "gfx\titlebar_scenery.bmp"
  SetOutPath "$INSTDIR\gfx\cursors"
  File "gfx\cursors\pselect.cur"
  File "gfx\cursors\waypoint.cur"
  File "gfx\cursors\create.cur"
  File "gfx\cursors\pselsub.cur"
  File "gfx\cursors\smudge.cur"
  File "gfx\cursors\pcolor.cur"
  File "gfx\cursors\rotate.cur"
  File "gfx\cursors\hand.cur"
  File "gfx\cursors\scale.cur"
  File "gfx\cursors\pseladd.cur"
  File "gfx\cursors\vselect.cur"
  File "gfx\cursors\clrpicker.cur"
  File "gfx\cursors\move.cur"
  File "gfx\cursors\scenery.cur"
  File "gfx\cursors\color_picker.cur"
  File "gfx\cursors\quad.cur"
  File "gfx\cursors\depthmap.cur"
  File "gfx\cursors\texture.cur"
  File "gfx\cursors\vselsub.cur"
  File "gfx\cursors\objects.cur"
  File "gfx\cursors\pixpicker.cur"
  File "gfx\cursors\vcolor.cur"
  File "gfx\cursors\light.cur"
  File "gfx\cursors\sketch.cur"
  File "gfx\cursors\connect.cur"
  File "gfx\cursors\eraser.cur"
  File "gfx\cursors\vseladd.cur"
  File "gfx\cursors\litpicker.cur"
  SetOutPath "$INSTDIR\Help"
  File "Help\tool_sketch.gif"
  File "Help\tool_pcolor.gif"
  File "Help\tool_vselect.gif"
  File "Help\tool_scenery.gif"
  File "Help\tool_texture.gif"
  File "Help\tool_objects.gif"
  File "Help\tool_create.gif"
  File "Help\tool_vcolor.gif"
  File "Help\tool_depthmap.gif"
  File "Help\tool_clrpicker.gif"
  File "Help\tool_lights.gif"
  File "Help\tool_move.gif"
  File "Help\tool_pselect.gif"
  File "Help\tool_waypoint.gif"
  SetOutPath "$INSTDIR\lists"
  File "lists\defaults.txt"
  CreateDirectory "$INSTDIR\Maps"
  SetOutPath "$INSTDIR\palettes"
  File "palettes\current.txt"
  File "palettes\MZpalette.txt"
  File "palettes\palette.txt"
  CreateDirectory "$INSTDIR\Prefabs"
  CreateDirectory "$INSTDIR\undo"
  CreateDirectory "$INSTDIR\Temp"
  SetOutPath "$INSTDIR\Workspace"
  File "Workspace\current.ini"

  CreateDirectory "$SMPROGRAMS\Soldat PolyWorks"
  CreateShortCut "$SMPROGRAMS\Soldat PolyWorks\Soldat PolyWorks.lnk" "$INSTDIR\Soldat PolyWorks.exe"
  CreateShortCut "$SMPROGRAMS\Soldat PolyWorks\Uninstall Soldat PolyWorks.lnk" "$INSTDIR\uninst.exe"

  WriteRegStr HKCR ".pms" "" "Soldat PolyWorks Map"
  WriteRegStr HKCR "Soldat PolyWorks Map" "" "Soldat PolyWorks Map"
  WriteRegStr HKCR "Soldat PolyWorks Map\shell" "" "open"
  WriteRegStr HKCR "Soldat PolyWorks Map\DefaultIcon" "" "$INSTDIR\PMS.ico"
  WriteRegStr HKCR "Soldat PolyWorks Map\shell\open\command" "" '"$INSTDIR\Soldat PolyWorks.exe" "%1"'
  WriteRegStr HKCR ".pfb" "" "Soldat PolyWorks Prefab"
  WriteRegStr HKCR "Soldat PolyWorks Prefab" "" "Soldat PolyWorks Prefab"
  WriteRegStr HKCR "Soldat PolyWorks Prefab\DefaultIcon" "" "$INSTDIR\PFB.ico"
  System::Call 'Shell32::SHChangeNotify(i ${SHCNE_ASSOCCHANGED}, i ${SHCNF_IDLIST}, i 0, i 0)'
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Soldat PolyWorks.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Soldat PolyWorks.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"

SectionEnd



Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2

  Abort
FunctionEnd

Section Uninstall


  Delete /REBOOTOK "$INSTDIR\uninst.exe"
  Delete /REBOOTOK "$INSTDIR\Soldat PolyWorks.exe"
  Delete /REBOOTOK "$INSTDIR\bgothl.ttf"
  Delete /REBOOTOK "$INSTDIR\COMDLG32.OCX"
  Delete /REBOOTOK "$INSTDIR\lucon.ttf"
  Delete /REBOOTOK "$INSTDIR\MBMouse.ocx"
  Delete /REBOOTOK "$INSTDIR\mscomctl.ocx"
  Delete /REBOOTOK "$INSTDIR\polyworks.ini"
  Delete /REBOOTOK "$INSTDIR\PolyWorks Help.html"
  Delete /REBOOTOK "$INSTDIR\ReadMe.txt"
  Delete /REBOOTOK "$INSTDIR\dx8vb.dll"
  Delete /REBOOTOK "$INSTDIR\PMS.ico"
  Delete /REBOOTOK "$INSTDIR\PFB.ico"

  Delete /REBOOTOK "$INSTDIR\BMPtoCUR\BMP to CUR.exe"
  Delete /REBOOTOK "$INSTDIR\BMPtoCUR\ReadMe.txt"
  RMDir /REBOOTOK "$INSTDIR\BMPtoCUR"

  Delete /REBOOTOK "$INSTDIR\gfx\Thumbs.db"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_palette.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\tool_gfx.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_texture.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\slider_arrow.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\pattern.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\tools.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\path.png"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_preferences.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_colorpicker.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\vertex8x8.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_tools.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_map.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_main.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\color_picker.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_properties.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\button_gfx.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\notfound.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_display.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\objects.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\lines.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\colors.ini"
  Delete /REBOOTOK "$INSTDIR\gfx\sketch.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\rcenter.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_waypoints.bmp"
  Delete /REBOOTOK "$INSTDIR\gfx\titlebar_scenery.bmp"


  Delete /REBOOTOK "$INSTDIR\gfx\cursors\pselect.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\waypoint.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\create.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\pselsub.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\smudge.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\pcolor.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\rotate.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\hand.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\scale.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\pseladd.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\vselect.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\clrpicker.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\move.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\scenery.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\color_picker.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\quad.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\depthmap.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\texture.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\vselsub.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\objects.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\pixpicker.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\vcolor.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\light.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\sketch.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\connect.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\eraser.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\vseladd.cur"
  Delete /REBOOTOK "$INSTDIR\gfx\cursors\litpicker.cur"
  RMDir /REBOOTOK "$INSTDIR\gfx\cursors"
  RMDir /REBOOTOK "$INSTDIR\gfx"

  Delete /REBOOTOK "$INSTDIR\Help\Thumbs.db"
  Delete /REBOOTOK "$INSTDIR\Help\tool_sketch.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_pcolor.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_vselect.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_scenery.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_texture.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_objects.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_create.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_vcolor.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_depthmap.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_clrpicker.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_lights.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_move.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_pselect.gif"
  Delete /REBOOTOK "$INSTDIR\Help\tool_waypoint.gif"
  RMDir /REBOOTOK "$INSTDIR\Help"

  Delete /REBOOTOK "$INSTDIR\lists\defaults.txt"
  RMDir /REBOOTOK "$INSTDIR\lists"
  RMDir /REBOOTOK "$INSTDIR\Maps"

  Delete /REBOOTOK "$INSTDIR\palettes\current.txt"
  Delete /REBOOTOK "$INSTDIR\palettes\MZpalette.txt"
  Delete /REBOOTOK "$INSTDIR\palettes\palette.txt"
  RMDir /REBOOTOK "$INSTDIR\palettes"
  RMDir /REBOOTOK "$INSTDIR\Prefabs"
  Delete /REBOOTOK "$INSTDIR\undo\*.pwn"
  RMDir /REBOOTOK "$INSTDIR\undo"
  Delete /REBOOTOK "$INSTDIR\Temp\Thumbs.db"
  Delete /REBOOTOK "$INSTDIR\Temp\gif.tga"
  Delete /REBOOTOK "$INSTDIR\Temp\copy.PFB"
  RMDir /REBOOTOK "$INSTDIR\Temp"

  Delete /REBOOTOK "$INSTDIR\Workspace\current.ini"
  RMDir /REBOOTOK "$INSTDIR\Workspace"
  RMDir /REBOOTOK "$INSTDIR"

  Delete /REBOOTOK "$SMPROGRAMS\Soldat Polyworks\Soldat PolyWorks.lnk"
  Delete /REBOOTOK "$SMPROGRAMS\Soldat Polyworks\Uninstall Soldat PolyWorks.lnk"
  RMDir /REBOOTOK "$SMPROGRAMS\Soldat Polyworks"

  DeleteRegKey HKCR ".pms"
  DeleteRegKey HKCR "Soldat PolyWorks Map"
  DeleteRegKey HKCR ".pfb"
  DeleteRegKey HKCR "Soldat PolyWorks Prefab"
  System::Call 'Shell32::SHChangeNotify(i ${SHCNE_ASSOCCHANGED}, i ${SHCNF_IDLIST}, i 0, i 0)'

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
