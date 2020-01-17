' InputBoxes
Contact = InputBox("Which Conctact Do You Want To DDos?", "WhatsApp DDos")
Message = InputBox("What Is The Message?","WhatsApp DDos")
T = InputBox("How Many Times Needs It To Be Send?","WhatsApp DDos")
If MsgBox("You've Filled It In Correctely", 1024 + vbSystemModal, "WhatsApp DDos") = vbOk Then
' Go To WhatsApp
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://web.whatsapp.com/", 1)
' Loading Time
If MsgBox("Is WhatsApp Loaded?" & vbNewLine & vbNewLine & "Press No To Cancel", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
' Go To The WhatsApp Search Bar
WScript.Sleep 50
WshShell.SendKeys "{TAB}"
' Go To The Contacts Chat
WScript.Sleep 50
WshShell.SendKeys Contact
WScript.Sleep 50
WshShell.SendKeys "{ENTER}"
' The Loop For The Messages
For i = 0 to T
WScript.Sleep 5
WshShell.SendKeys Message
WScript.Sleep 5
WshShell.SendKeys "{ENTER}"
Next
' End Of The Script
WScript.Sleep 3000
MsgBox "DDosing Of " + Contact + " Is Done", 1024 + vbSystemModal, "DDos Is Done"
' Canceled Script
Else
MsgBox "Process Has Been Canceled", vbSystemModal, "DDos Canceled"
End If
Else
End If
