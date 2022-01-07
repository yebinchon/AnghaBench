
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_WRITE ;
 int GetProcessHeap () ;
 int GetTempFileNameW (char*,char const*,int ,char*) ;
 int GetTempPathW (int,char*) ;
 char* HeapAlloc (int ,int ,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int WriteFile (scalar_t__,int *,int ,int *,int *) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char*) ;

__attribute__((used)) static WCHAR *save_profile( BYTE *buffer, UINT size )
{
    static const WCHAR tstW[] = {'t','s','t',0};
    WCHAR path[MAX_PATH], filename[MAX_PATH], *ret;
    HANDLE handle;
    DWORD count;

    GetTempPathW(MAX_PATH, path);
    GetTempFileNameW(path, tstW, 0, filename);

    handle = CreateFileW(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    if (handle == INVALID_HANDLE_VALUE) return ((void*)0);

    WriteFile(handle, buffer, size, &count, ((void*)0));
    CloseHandle( handle );

    ret = HeapAlloc(GetProcessHeap(), 0, (lstrlenW(filename) + 1) * sizeof(WCHAR));
    lstrcpyW(ret, filename);
    return ret;
}
