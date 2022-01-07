
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPDWORD ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int GetCurrentProcess () ;
 int GetDefaultUserProfileDirectoryW (int ,int ) ;
 int GetUserProfileDirectoryW (scalar_t__,int ,int ) ;
 int OpenProcessToken (int ,int ,scalar_t__*) ;
 int TOKEN_QUERY ;
 int TRACE (char*,int ) ;

BOOL _SHGetUserProfileDirectoryW(HANDLE hToken, LPWSTR szPath, LPDWORD lpcchPath)
{
    BOOL result;
    if (!hToken)
    {
        OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &hToken);
        result = GetUserProfileDirectoryW(hToken, szPath, lpcchPath);
        CloseHandle(hToken);
    }
    else if ((INT) hToken == -1)
    {
        result = GetDefaultUserProfileDirectoryW(szPath, lpcchPath);
    }
    else
    {
        result = GetUserProfileDirectoryW(hToken, szPath, lpcchPath);
    }
    TRACE("_SHGetUserProfileDirectoryW returning %S\n", szPath);
    return result;
}
