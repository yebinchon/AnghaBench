
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef size_t DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char*) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetTempFileNameA (int ,char*,int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,unsigned char const*,size_t,size_t*,int *) ;
 int ok (int ,char*,int ) ;
 int temp_path ;

BOOL extract2(char* filename, const unsigned char* data, size_t len)
{
    HANDLE hFile;
    BOOL bRet;
    DWORD dwWritten;

    if (!GetTempFileNameA(temp_path, "mpa", 0, filename))
    {
        ok(0, "GetTempFileNameA failed %lu\n", GetLastError());
        return FALSE;
    }

    hFile = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        ok(0, "CreateFileA failed %lu\n", GetLastError());
        DeleteFileA(filename);
        return FALSE;
    }

    bRet = WriteFile(hFile, data, len, &dwWritten, ((void*)0));
    CloseHandle(hFile);
    bRet = bRet && (dwWritten == len);

    if (!bRet)
    {
        ok(0, "WriteFile failed %lu\n", GetLastError());
        DeleteFileA(filename);
    }

    return bRet;
}
