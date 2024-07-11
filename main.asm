.386
.model flat, stdcall
.stack 4096

ExitProcess proto, dwExitCode:DWORD
WriteConsoleA proto hConsoleOutput:DWORD, lpBuffer:PTR BYTE, nNumberOfCharsToWrite:DWORD, lpNumberOfCharsWritten:PTR DWORD, lpReserved:DWORD
GetStdHandle proto nStdHandle:DWORD

STD_OUTPUT_HANDLE equ -11

.data
    helloWorld db 'Hello, World!', 0
    helloWorldLen dd $ - helloWorld
    charsWritten dd ?

.code
main proc
    ; Get the standard output handle
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov ebx, eax

    ; Write the string to the console
    lea edx, helloWorld
    mov ecx, helloWorldLen
    lea esi, charsWritten
    invoke WriteConsoleA, ebx, edx, ecx, esi, 0

    ; Exit the process
    invoke ExitProcess, 0
main endp

end main
