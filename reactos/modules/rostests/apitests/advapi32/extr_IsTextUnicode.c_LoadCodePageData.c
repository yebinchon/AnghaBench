
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int ULONG ;
typedef int * PVOID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetSystemDirectoryA (char*,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int *,int ,int *,int *) ;
 int StringCbPrintfA (char*,int,char*,char*,...) ;
 int * malloc (int ) ;

PVOID LoadCodePageData(ULONG Code)
{
    char filename[MAX_PATH], sysdir[MAX_PATH];
    HANDLE hFile;
    PVOID Data = ((void*)0);
    GetSystemDirectoryA(sysdir, MAX_PATH);

    if (Code != -1)
        StringCbPrintfA(filename, sizeof(filename), "%s\\c_%lu.nls", sysdir, Code);
    else
        StringCbPrintfA(filename, sizeof(filename), "%s\\l_intl.nls", sysdir);

    hFile = CreateFile(filename, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (hFile != INVALID_HANDLE_VALUE)
    {
        DWORD dwRead;
        DWORD dwFileSize = GetFileSize(hFile, ((void*)0));
        Data = malloc(dwFileSize);
        ReadFile(hFile, Data, dwFileSize, &dwRead, ((void*)0));
        CloseHandle(hFile);
    }
    return Data;
}
