# This Project uses basic assembly language code to print 'Hello World' to the console
## ( and mind it, just doing that is a big big pain, now I know why to use a high-level programming language )

## Requirements
- "Windows SDK" installed at path : C:\Program Files (x86)\Windows Kits
- MASM installed at path : C:\MASM32
- MASM added to system PATH end var - C:\MASM32\BIN added to system environment variables : "system variables > PATH" NOT user variables

## USAGE :

- assemble the .asm file (for windows os only)
    > ml /c /coff main.asm

- link the .obj file
    > "C:\MASM32\BIN\link.exe" /subsystem:console /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x86" kernel32.lib main.obj