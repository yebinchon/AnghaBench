
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char*,int,int *,int *) ;

__attribute__((used)) static HANDLE
BestFit_CreateFile(const WCHAR *pszFile)
{
    DWORD dwBytesWritten;
    HANDLE hFile;

    hFile = CreateFileW(pszFile,
                        GENERIC_WRITE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE,
                        ((void*)0),
                        CREATE_ALWAYS,
                        FILE_ATTRIBUTE_NORMAL,
                        ((void*)0));
    if (hFile != INVALID_HANDLE_VALUE)
    {

        WriteFile(hFile, "\xEF\xBB\xBF", 3, &dwBytesWritten, ((void*)0));
    }

    return hFile;
}
