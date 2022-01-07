
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ARRAYSIZE (int*) ;
 int DPRINT1 (char*,...) ;
 int ERROR_BUFFER_OVERFLOW ;
 int ExpandEnvironmentStringsW (char*,int*,int ) ;
 int FALSE ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int ) ;
 int TRUE ;
 int _wcsupr (int*) ;
 int wcscat (int*,int*) ;
 scalar_t__ wcslen (int*) ;

BOOL
AppendSystemPostfix(LPWSTR lpName,
                    DWORD dwMaxLength)
{
    WCHAR szSystemRoot[MAX_PATH];
    LPWSTR lpszPostfix;
    LPWSTR lpszPtr;


    if (!ExpandEnvironmentStringsW(L"%SystemRoot%",
                                   szSystemRoot,
                                   ARRAYSIZE(szSystemRoot)))
    {
        DPRINT1("Error: %lu\n", GetLastError());
        return FALSE;
    }

    _wcsupr(szSystemRoot);


    szSystemRoot[2] = L'.';
    lpszPostfix = &szSystemRoot[2];
    lpszPtr = lpszPostfix;
    while (*lpszPtr != (WCHAR)0)
    {
        if (*lpszPtr == L'\\')
            *lpszPtr = L'_';
        lpszPtr++;
    }

    if (wcslen(lpName) + wcslen(lpszPostfix) + 1 >= dwMaxLength)
    {
        DPRINT1("Error: buffer overflow\n");
        SetLastError(ERROR_BUFFER_OVERFLOW);
        return FALSE;
    }

    wcscat(lpName, lpszPostfix);

    return TRUE;
}
