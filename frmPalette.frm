VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmPalette 
   Appearance      =   0  'Flat
   BackColor       =   &H004A3C31&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   4080
   ClientLeft      =   120
   ClientTop       =   120
   ClientWidth     =   3120
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   272
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   208
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picClrMode 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H004A3C31&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   240
      Index           =   2
      Left            =   1200
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   16
      TabIndex        =   23
      Tag             =   "6"
      Top             =   1080
      Width           =   240
   End
   Begin VB.PictureBox picClrMode 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H004A3C31&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   240
      Index           =   1
      Left            =   1200
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   16
      TabIndex        =   22
      Tag             =   "6"
      Top             =   840
      Width           =   240
   End
   Begin VB.PictureBox picClrMode 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H004A3C31&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   240
      Index           =   0
      Left            =   1200
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   16
      TabIndex        =   21
      Tag             =   "6"
      Top             =   600
      Width           =   240
   End
   Begin VB.TextBox txtRadius 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2520
      TabIndex        =   16
      Tag             =   "font1"
      Text            =   "0"
      Top             =   1440
      Width           =   495
   End
   Begin MSComDlg.CommonDialog commonDialog 
      Left            =   360
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.PictureBox picTitle 
      Align           =   1  'Align Top
      Appearance      =   0  'Flat
      BackColor       =   &H004A3C31&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   0
      ScaleHeight     =   17
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   208
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   0
      Width           =   3120
      Begin VB.PictureBox picHide 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H004A3C31&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   2880
         ScaleHeight     =   16
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   16
         TabIndex        =   14
         TabStop         =   0   'False
         Tag             =   "3"
         Top             =   0
         Width           =   240
      End
      Begin VB.PictureBox picPaletteMenu 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H004A3C31&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   240
         Left            =   2640
         ScaleHeight     =   16
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   16
         TabIndex        =   15
         TabStop         =   0   'False
         Tag             =   "8"
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.ComboBox cboBlendMode 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      ItemData        =   "frmPalette.frx":0000
      Left            =   2040
      List            =   "frmPalette.frx":0016
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Tag             =   "font1"
      Top             =   2160
      Width           =   960
   End
   Begin VB.PictureBox picColor 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   975
      Left            =   120
      ScaleHeight     =   63
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   63
      TabIndex        =   7
      TabStop         =   0   'False
      ToolTipText     =   "Current Color"
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox txtRGB 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   600
      TabIndex        =   1
      Tag             =   "font1"
      Text            =   "0"
      Top             =   1440
      Width           =   480
   End
   Begin VB.TextBox txtRGB 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   600
      TabIndex        =   2
      Tag             =   "font1"
      Text            =   "0"
      Top             =   1800
      Width           =   480
   End
   Begin VB.TextBox txtRGB 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   600
      TabIndex        =   3
      Tag             =   "font1"
      Text            =   "0"
      Top             =   2160
      Width           =   480
   End
   Begin VB.TextBox txtOpacity 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2520
      TabIndex        =   4
      Tag             =   "font1"
      Text            =   "0"
      Top             =   1800
      Width           =   480
   End
   Begin VB.PictureBox picPalette 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      FillColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   1470
      Left            =   120
      ScaleHeight     =   96
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   192
      TabIndex        =   6
      TabStop         =   0   'False
      ToolTipText     =   "Palette"
      Top             =   2520
      Width           =   2910
      Begin VB.Shape shpSel1 
         BorderColor     =   &H00FFFFFF&
         DrawMode        =   6  'Mask Pen Not
         Height          =   210
         Left            =   240
         Top             =   0
         Width           =   210
      End
      Begin VB.Shape shpSel2 
         Height          =   240
         Left            =   0
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.CommandButton cmdDefault 
      Default         =   -1  'True
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   495
   End
   Begin VB.Label lblPal 
      BackStyle       =   0  'Transparent
      Caption         =   "Vertex Color:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   6
      Left            =   1200
      TabIndex        =   24
      Tag             =   "font2"
      Top             =   360
      Width           =   1695
   End
   Begin VB.Label lblClrMode 
      BackColor       =   &H00614B3D&
      BackStyle       =   0  'Transparent
      Caption         =   " Dynamic"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   1440
      TabIndex        =   20
      Tag             =   "font2"
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lblClrMode 
      BackColor       =   &H00614B3D&
      BackStyle       =   0  'Transparent
      Caption         =   " Normal"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   1440
      TabIndex        =   19
      Tag             =   "font2"
      Top             =   840
      Width           =   1095
   End
   Begin VB.Label lblClrMode 
      BackColor       =   &H00614B3D&
      BackStyle       =   0  'Transparent
      Caption         =   " Precision"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   1440
      TabIndex        =   18
      Tag             =   "font2"
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "Radius:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   3
      Left            =   1200
      TabIndex        =   17
      Tag             =   "font2"
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "Mode:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   5
      Left            =   1200
      TabIndex        =   12
      Tag             =   "font2"
      Top             =   2160
      Width           =   735
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "R:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   11
      Tag             =   "font2"
      Top             =   1440
      Width           =   255
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "G:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   10
      Tag             =   "font2"
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "B:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   9
      Tag             =   "font2"
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label lblPal 
      BackColor       =   &H00614B3D&
      Caption         =   "Opacity:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   4
      Left            =   1200
      TabIndex        =   8
      Tag             =   "font2"
      Top             =   1800
      Width           =   975
   End
   Begin VB.Menu mnuPalette 
      Caption         =   "Palette"
      Visible         =   0   'False
      Begin VB.Menu mnuLoadPalette 
         Caption         =   "Load Palette"
      End
      Begin VB.Menu mnuSavePalette 
         Caption         =   "Save Palette"
      End
      Begin VB.Menu mnuClearPalette 
         Caption         =   "Clear"
      End
   End
   Begin VB.Menu mnuNewColor 
      Caption         =   "NewColor"
      Visible         =   0   'False
      Begin VB.Menu mnuAddToPalette 
         Caption         =   "Add to Palette"
      End
   End
End
Attribute VB_Name = "frmPalette"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Type TColor
    red As Byte
    green As Byte
    blue As Byte
End Type

Dim clrPalette(0 To 11, 0 To 5) As TColor

Dim formHeight As Integer
Public collapsed As Boolean
Public xPos As Integer, yPos  As Integer

Dim radius As Integer
Dim clrMode As Byte

Dim xVal As Integer, yVal As Integer

Dim tempVal As Integer

Public Function getPalClr(X As Integer, Y As Integer) As Long

    getPalClr = RGB(clrPalette(X, Y).blue, clrPalette(X, Y).green, clrPalette(X, Y).red)

End Function

Public Sub setPalClr(X As Integer, Y As Integer, clrVal As Long)

    clrPalette(X, Y) = getRGB(clrVal)

End Sub

Public Sub refreshPalette(R As Integer, op As Single, blend As Integer, mode As Byte)

    Dim X As Integer, Y As Integer, i As Integer

    For Y = 0 To 5
        For X = 0 To 11
            frmPalette.picPalette.Line (X * 16, Y * 16)-(X * 16 + 16, 16 * 16 + 16), RGB(clrPalette(X, Y).red, clrPalette(X, Y).green, clrPalette(X, Y).blue), BF
        Next
    Next

    radius = R
    txtRadius.Text = R
    txtOpacity.Text = op * 100
    cboBlendMode.ListIndex = blend
    clrMode = mode

    For i = 0 To 2
        If i = clrMode Then
            BitBlt picClrMode(i).hDC, 0, 0, 16, 16, frmSoldatMapEditor.picGfx.hDC, 96, 112, vbSrcCopy
        Else
            BitBlt picClrMode(i).hDC, 0, 0, 16, 16, frmSoldatMapEditor.picGfx.hDC, 96, 96, vbSrcCopy
        End If
        picClrMode(i).Refresh
    Next

    For i = 0 To 2
        mouseEvent2 picClrMode(i), 0, 0, BUTTON_SMALL, (clrMode = i), BUTTON_UP
    Next

End Sub

Private Function getRGB(DecValue As Long) As TColor

    Dim hexValue As String

    hexValue = Hex$(Val(DecValue))

    If Len(hexValue) < 6 Then
        hexValue = String$(6 - Len(hexValue), "0") + hexValue
    End If

    getRGB.blue = CLng("&H" + right(hexValue, 2))
    hexValue = left(hexValue, Len(hexValue) - 2)
    getRGB.green = CLng("&H" + right(hexValue, 2))
    hexValue = left(hexValue, Len(hexValue) - 2)
    getRGB.red = CLng("&H" + right(hexValue, 2))

End Function

Public Sub checkPalette(red As Byte, green As Byte, blue As Byte)

    Dim X As Integer, Y As Integer
    Dim foundClr As Boolean

    For Y = 0 To 5
        For X = 0 To 11
            If red = clrPalette(X, Y).red And green = clrPalette(X, Y).green And blue = clrPalette(X, Y).blue And Not foundClr Then
                shpSel1.left = X * 16 + 1
                shpSel1.Top = Y * 16 + 1
                shpSel2.left = X * 16
                shpSel2.Top = Y * 16
                foundClr = True
            End If
        Next
    Next

End Sub

Private Sub cmdDefault_Click()

    cmdDefault.SetFocus

End Sub

Private Sub Form_Click()

    cmdDefault.SetFocus

End Sub

Private Sub Form_Load()

    Dim i As Integer

    On Error GoTo ErrorHandler

    Me.SetColors

    frmPalette.loadPalette appPath & "\palettes\current.txt"

    setValues frmColor.red, frmColor.green, frmColor.blue

    shpSel1.left = picPalette.ScaleWidth + 2
    shpSel1.Top = picPalette.ScaleHeight + 2
    shpSel2.left = picPalette.ScaleWidth + 2
    shpSel2.Top = picPalette.ScaleHeight + 2

    formHeight = Me.ScaleHeight

    setForm

    Exit Sub

ErrorHandler:

    MsgBox Error$ & vbNewLine & "Error loading Palette form"

End Sub

Public Sub setForm()

    Me.left = xPos * Screen.TwipsPerPixelX
    Me.Top = yPos * Screen.TwipsPerPixelY
    If collapsed Then
        Me.Height = 19 * Screen.TwipsPerPixelY
    Else
        Me.Height = formHeight * Screen.TwipsPerPixelY
    End If

End Sub

Public Sub loadPalette(fileName As String)

    On Error GoTo ErrorHandler

    Dim X As Integer, Y As Integer
    Dim fileOpen As Boolean

    fileOpen = False

    Open fileName For Input As #1
    fileOpen = True

        For Y = 0 To 5
            For X = 0 To 11
                Input #1, clrPalette(X, Y).red
                Input #1, clrPalette(X, Y).green
                Input #1, clrPalette(X, Y).blue
                frmPalette.picPalette.Line (X * 16, Y * 16)-(X * 16 + 16, 16 * 16 + 16), RGB(clrPalette(X, Y).red, clrPalette(X, Y).green, clrPalette(X, Y).blue), BF
            Next
        Next

    Close #1
    fileOpen = False

    shpSel1.left = picPalette.ScaleWidth + 2
    shpSel1.Top = picPalette.ScaleHeight + 2
    shpSel2.left = picPalette.ScaleWidth + 2
    shpSel2.Top = picPalette.ScaleHeight + 2

    picPalette.Refresh

    Exit Sub

ErrorHandler:

    mnuClearPalette_Click
    If fileOpen Then Close #1
    MsgBox "Error loading palette" & vbNewLine & Error$

End Sub

Private Sub Form_LostFocus()

    cmdDefault.SetFocus

End Sub

Private Sub lblClrMode_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

    picClrMode_MouseMove Index, 1, 0, 0, 0

End Sub

Private Sub mnuLoadPalette_Click()

    On Error GoTo ErrorHandler

    commonDialog.InitDir = appPath & "\palettes\"
    commonDialog.DialogTitle = "Load Palette"
    commonDialog.Filter = "Text Documents (*.txt)|*.txt"
    commonDialog.ShowOpen

    If commonDialog.fileName <> "" Then
        loadPalette commonDialog.fileName
    End If

    Exit Sub

ErrorHandler:

End Sub

Public Sub savePalette(fileName As String)

    Dim X As Integer, Y As Integer
    Dim fileOpen As Boolean

    On Error GoTo ErrorHandler

    fileOpen = False

    Open fileName For Output As #1
    fileOpen = True

        For Y = 0 To 5
            For X = 0 To 11
                Print #1, clrPalette(X, Y).red & ", " & clrPalette(X, Y).green & ", " & clrPalette(X, Y).blue
            Next
        Next

    Close #1
    fileOpen = False

    Exit Sub

ErrorHandler:

    If fileOpen Then Close #1
    MsgBox "Error saving palette" & vbNewLine & Error$

End Sub

Private Sub mnuSavePalette_Click()

    On Error GoTo ErrorHandler

    commonDialog.InitDir = appPath & "\palettes\"
    commonDialog.DialogTitle = "Save Palette"
    commonDialog.Filter = "Text Documents (*.txt)|*.txt"
    commonDialog.ShowSave

    If commonDialog.fileName <> "" Then
        savePalette commonDialog.fileName
    End If

    Exit Sub

ErrorHandler:

End Sub

Private Sub mnuClearPalette_Click()

    Dim X As Integer, Y As Integer

    For Y = 0 To 5
        For X = 0 To 11
            clrPalette(X, Y).red = 0
            clrPalette(X, Y).green = 0
            clrPalette(X, Y).blue = 0
            frmPalette.picPalette.Line (X * 16, Y * 16)-(X * 16 + 16, 16 * 16 + 16), 0, BF
        Next
    Next

    shpSel1.left = picPalette.ScaleWidth + 2
    shpSel1.Top = picPalette.ScaleHeight + 2
    shpSel2.left = picPalette.ScaleWidth + 2
    shpSel2.Top = picPalette.ScaleHeight + 2

End Sub

Private Sub picHide_Click()

    Me.Hide
    frmSoldatMapEditor.mnuPalette.Checked = False

End Sub

Private Sub picPalette_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If Button = 1 Then 'select color

        xVal = Int(X / 16)
        yVal = Int(Y / 16)
        frmSoldatMapEditor.setPaletteColor clrPalette(xVal, yVal).red, clrPalette(xVal, yVal).green, clrPalette(xVal, yVal).blue

        txtRGB(0).Text = clrPalette(xVal, yVal).red
        txtRGB(1).Text = clrPalette(xVal, yVal).green
        txtRGB(2).Text = clrPalette(xVal, yVal).blue
        picColor.BackColor = RGB(clrPalette(xVal, yVal).red, clrPalette(xVal, yVal).green, clrPalette(xVal, yVal).blue)

        shpSel1.left = Int(X / 16) * 16 + 1
        shpSel1.Top = Int(Y / 16) * 16 + 1
        shpSel2.left = Int(X / 16) * 16
        shpSel2.Top = Int(Y / 16) * 16

    ElseIf Button = 2 Then 'new color

        xVal = Int(X / 16)
        yVal = Int(Y / 16)
        Me.PopupMenu mnuNewColor

    End If

    cmdDefault.SetFocus

End Sub

Public Sub newPaletteColor()

    clrPalette(xVal, yVal).red = txtRGB(0).Text
    clrPalette(xVal, yVal).green = txtRGB(1).Text
    clrPalette(xVal, yVal).blue = txtRGB(2).Text
    picPalette.Line (xVal * 16, yVal * 16)-(xVal * 16 + 15, yVal * 16 + 15), RGB(clrPalette(xVal, yVal).red, clrPalette(xVal, yVal).green, clrPalette(xVal, yVal).blue), BF
    shpSel1.left = xVal * 16 + 1
    shpSel1.Top = yVal * 16 + 1
    shpSel2.left = xVal * 16
    shpSel2.Top = yVal * 16

End Sub

Private Sub mnuAddToPalette_Click()

    newPaletteColor

End Sub

Private Sub picColor_Click()

    frmColor.InitClr txtRGB(0).Text, txtRGB(1).Text, txtRGB(2).Text

    frmColor.ChangeColor picColor, txtRGB(0).Text, txtRGB(1).Text, txtRGB(2).Text, 0

End Sub

Private Sub txtradius_Change()

    If IsNumeric(txtRadius.Text) = False And txtRadius.Text <> "" Then
        txtRadius.Text = radius
    End If

End Sub

Private Sub txtradius_GotFocus()

    SelectAllText txtRadius

End Sub

Private Sub txtradius_LostFocus()

    If IsNumeric(txtRadius.Text) = False And txtRadius.Text <> "" Then
        txtRadius.Text = radius
    ElseIf txtRadius.Text = "" Then
        txtRadius.Text = radius
    ElseIf txtRadius.Text >= 4 And txtRadius.Text <= 128 Then
        radius = Int(txtRadius.Text)
        txtRadius.Text = radius
        frmSoldatMapEditor.setRadius radius
    Else
        If txtRadius.Text < 4 Then radius = 4
        If txtRadius.Text > 128 Then radius = 128
        txtRadius.Text = radius
        frmSoldatMapEditor.setRadius radius
    End If

End Sub

Private Sub txtRGB_Change(Index As Integer)

    If IsNumeric(txtRGB(Index).Text) = False And txtRGB(Index).Text <> "" Then
    ElseIf txtRGB(Index).Text = "" Then

    ElseIf txtRGB(Index).Text >= 0 And txtRGB(Index).Text <= 255 Then
        picColor.BackColor = RGB(txtRGB(0).Text, txtRGB(1).Text, txtRGB(2).Text)
        frmSoldatMapEditor.setPolyColor Index, txtRGB(Index).Text
    End If

End Sub

Private Sub txtRGB_GotFocus(Index As Integer)

    If IsNumeric(txtRGB(Index).Text) Then
        tempVal = txtRGB(Index).Text
    Else
        tempVal = 0
    End If
    SelectAllText txtRGB(Index)

End Sub

Private Sub txtRGB_LostFocus(Index As Integer)

    If Not IsNumeric(txtRGB(Index).Text) Then
        txtRGB(Index).Text = tempVal
    ElseIf txtRGB(Index).Text = "" Then
        txtRGB(Index).Text = tempVal
    ElseIf txtRGB(Index).Text >= 0 And txtRGB(Index).Text <= 255 Then
        frmSoldatMapEditor.setPolyColor Index, txtRGB(Index).Text
    Else
        txtRGB(Index).Text = tempVal
    End If

    picColor.BackColor = RGB(txtRGB(0).Text, txtRGB(1).Text, txtRGB(2).Text)

End Sub

Private Sub txtOpacity_Change()

    If IsNumeric(txtOpacity.Text) = False And txtOpacity.Text <> "" Then
        txtOpacity.Text = 100
    ElseIf txtOpacity.Text = "" Then

    ElseIf txtOpacity.Text >= 0 And txtOpacity.Text <= 100 Then
        frmSoldatMapEditor.setPolyColor 3, txtOpacity.Text
    End If

End Sub

Private Sub txtOpacity_GotFocus()

    SelectAllText txtOpacity

End Sub

Private Sub txtOpacity_LostFocus()

    If txtOpacity.Text = "" Then
        txtOpacity.Text = 0
    ElseIf txtOpacity.Text >= 0 And txtOpacity.Text <= 100 Then
    Else
        txtOpacity.Text = 0
    End If

End Sub

Private Sub cboBlendMode_Click()

    frmSoldatMapEditor.setBlendMode cboBlendMode.ListIndex

End Sub

Public Sub setValues(R As Byte, G As Byte, B As Byte)

    txtRGB(0).Text = R
    txtRGB(1).Text = G
    txtRGB(2).Text = B
    picColor.BackColor = RGB(R, G, B)
    shpSel1.left = picPalette.ScaleWidth + 2
    shpSel1.Top = picPalette.ScaleHeight + 2
    shpSel2.left = picPalette.ScaleWidth + 2
    shpSel2.Top = picPalette.ScaleHeight + 2

End Sub

Public Function textControl() As Boolean

    Dim i As Integer

    textControl = False

    For i = 0 To 2
        If Me.ActiveControl = txtRGB(i) Then
            textControl = True
        End If
    Next
    If Me.ActiveControl = txtOpacity Then
        textControl = True
    ElseIf Me.ActiveControl = txtRadius Then
        textControl = True
    End If

End Function


Public Sub picClrMode_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picClrMode(Index), X, Y, BUTTON_SMALL, (Index = clrMode), BUTTON_DOWN

End Sub

Private Sub picClrMode_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picClrMode(Index), X, Y, BUTTON_SMALL, (Index = clrMode), BUTTON_MOVE, lblClrMode(Index).Width + 16

End Sub

Private Sub picClrMode_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

    Dim i As Integer

    clrMode = Index

    For i = 0 To 2
        If i <> Index Then
            mouseEvent2 picClrMode(i), X, Y, BUTTON_SMALL, (i = clrMode), BUTTON_UP
        End If
    Next

    frmSoldatMapEditor.setColorMode clrMode
    frmSoldatMapEditor.RegainFocus

End Sub

Private Sub picTitle_DblClick()

    collapsed = Not collapsed
    If collapsed Then
        Me.Height = 19 * Screen.TwipsPerPixelY
    Else
        Me.Height = formHeight * Screen.TwipsPerPixelY
    End If

End Sub

Private Sub picTitle_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    ReleaseCapture
    SendMessage Me.hWnd, WM_NCLBUTTONDOWN, 2, 0&

    snapForm Me, frmTools
    ' snapForm Me, frmPalette
    snapForm Me, frmWaypoints
    snapForm Me, frmDisplay
    snapForm Me, frmScenery
    snapForm Me, frmInfo
    snapForm Me, frmTexture
    Me.Tag = snapForm(Me, frmSoldatMapEditor)

    xPos = Me.left / Screen.TwipsPerPixelX
    yPos = Me.Top / Screen.TwipsPerPixelY

End Sub

Private Sub picPaletteMenu_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picPaletteMenu, X, Y, BUTTON_SMALL, 0, BUTTON_DOWN

    PopupMenu mnuPalette, , picPaletteMenu.left + 32, picPaletteMenu.Top + 16

    mouseEvent2 picPaletteMenu, X, Y, BUTTON_SMALL, 0, BUTTON_UP

End Sub

Private Sub picPaletteMenu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picPaletteMenu, X, Y, BUTTON_SMALL, 0, BUTTON_MOVE

End Sub

Private Sub picHide_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picHide, X, Y, BUTTON_SMALL, 0, BUTTON_DOWN

End Sub

Private Sub picHide_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picHide, X, Y, BUTTON_SMALL, 0, BUTTON_MOVE

End Sub

Private Sub picHide_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    mouseEvent2 picHide, X, Y, BUTTON_SMALL, 0, BUTTON_UP

End Sub

Public Sub SetColors()

    On Error Resume Next

    Dim i As Integer
    Dim c As Control

    picTitle.Picture = LoadPicture(appPath & "\" & gfxDir & "\titlebar_palette.bmp")

    mouseEvent2 picHide, 0, 0, BUTTON_SMALL, 0, BUTTON_UP
    mouseEvent2 picPaletteMenu, 0, 0, BUTTON_SMALL, 0, BUTTON_UP

    For i = 0 To 2
        mouseEvent2 picClrMode(i), 0, 0, BUTTON_SMALL, (clrMode = i), BUTTON_UP
    Next

    Me.BackColor = bgClr
    For i = 0 To 6
        lblPal(i).BackColor = lblBackClr
        lblPal(i).ForeColor = lblTextClr
    Next
    For i = 0 To 2
        lblClrMode(i).BackColor = lblBackClr
        lblClrMode(i).ForeColor = lblTextClr
        txtRGB(i).BackColor = txtBackClr
        txtRGB(i).ForeColor = txtTextClr
    Next

    txtOpacity.BackColor = txtBackClr
    txtOpacity.ForeColor = txtTextClr
    txtRadius.BackColor = txtBackClr
    txtRadius.ForeColor = txtTextClr
    cboBlendMode.BackColor = txtBackClr
    cboBlendMode.ForeColor = txtTextClr

    For Each c In Me.Controls
        If c.Tag = "font1" Then
            c.Font.Name = font1
        ElseIf c.Tag = "font2" Then
            c.Font.Name = font2
        End If
    Next

End Sub
