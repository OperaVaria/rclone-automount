'Rclone Automount Script Template
'by OperaVaria, 2024.

'Mandatory variable declaration, helps to avoid errors.
Option Explicit

'Declare cmd variables:
Dim cmd1, cmd2, cmd3 'Arbitrary number of three commands in template, add or remove according to your needs.

'Assign rclone commands to cmd variables:
cmd1 = "rclone mount ""remote:path/to/files-1"" ""/path/to/local/mount-1"" --log-file ""/path/to/log_file-1.txt"" --no-console --vfs-cache-mode full"
cmd2 = "rclone mount ""remote:path/to/files-2"" ""/path/to/local/mount-2"" --log-file ""/path/to/log_file-2.txt"" --no-console --vfs-cache-mode full"
cmd3 = "rclone mount ""remote:path/to/files-3"" ""/path/to/local/mount-3"" --log-file ""/path/to/log_file-3.txt"" --no-console --vfs-cache-mode full"
'Etc. add or remove as many as you like.

'Dim and Set shell object:
Dim oShell
Set oShell = WScript.CreateObject ("WScript.shell")

'For loop for (hidden) command execution:
Dim command
For Each command in Array(cmd1, cmd2, cmd3) 'Add all cmd variables to this array!	
	oShell.run command,0,false
Next

'Set object to Nothing as tradition:
Set oShell = Nothing
