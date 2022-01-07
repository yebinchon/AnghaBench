
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryW (int,int *) ;
 scalar_t__ CreateFileW (int,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ ERROR_FILE_EXISTS ;
 int ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SHARING_VIOLATION ;
 int ERROR_SUCCESS ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 int GetTickCount () ;
 int GetWindowsDirectoryW (int,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int memcpy (int,int,int) ;
 int snprintfW (int,int,char const*,int) ;
 int strcatW (int,char const*) ;
 int strlenW (int) ;

UINT msi_create_empty_local_file( LPWSTR path, LPCWSTR suffix )
{
    static const WCHAR szInstaller[] = {
        '\\','I','n','s','t','a','l','l','e','r','\\',0};
    static const WCHAR fmt[] = {'%','x',0};
    DWORD time, len, i, offset;
    HANDLE handle;

    time = GetTickCount();
    GetWindowsDirectoryW( path, MAX_PATH );
    strcatW( path, szInstaller );
    CreateDirectoryW( path, ((void*)0) );

    len = strlenW(path);
    for (i = 0; i < 0x10000; i++)
    {
        offset = snprintfW( path + len, MAX_PATH - len, fmt, (time + i) & 0xffff );
        memcpy( path + len + offset, suffix, (strlenW( suffix ) + 1) * sizeof(WCHAR) );
        handle = CreateFileW( path, GENERIC_WRITE, 0, ((void*)0),
                              CREATE_NEW, FILE_ATTRIBUTE_NORMAL, 0 );
        if (handle != INVALID_HANDLE_VALUE)
        {
            CloseHandle(handle);
            break;
        }
        if (GetLastError() != ERROR_FILE_EXISTS &&
            GetLastError() != ERROR_SHARING_VIOLATION)
            return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}
