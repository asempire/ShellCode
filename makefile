CC = x86_64-w64-mingw32-gcc
CFLAGS = -Wall -o

all: shell.exe shell.dll shell_loader.exe

shell.exe: windows_shell.c
	$(CC) $(CFLAGS) $@ $^ -lws2_32

shell.dll: windows_dll.c
	$(CC) $(CFLAGS) $@ $^ -lws2_32 -shared

shell_loader.exe: windows_dll_loader.c
	$(CC) $(CFLAGS) $@ $^

clean:
	rm -f shell.exe shell.dll shell_loader.exe

