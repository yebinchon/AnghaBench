
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int ) ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,void*,int,int*,int *) ;
 int SetLastError (int) ;
 int ok (int,char*,char const*,...) ;

__attribute__((used)) static int load_blackbox(const char* logfile, void* blackbox, int size)
{
    HANDLE hFile;
    DWORD read;
    BOOL ret;

    hFile=CreateFileA(logfile, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, 0);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        ok(0, "unable to open '%s'\n", logfile);
        return 0;
    }
    SetLastError(0xdeadbeef);
    ret=ReadFile(hFile, blackbox, size, &read, ((void*)0));
    ok(ret, "ReadFile failed: %d\n", GetLastError());
    ok(read == size, "wrong size for '%s': read=%d\n", logfile, read);
    CloseHandle(hFile);
    return 1;
}
