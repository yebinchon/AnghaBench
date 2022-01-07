
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ REG_DWORD ;
 scalar_t__ RegQueryValueEx (int ,int ,int *,scalar_t__*,int ,scalar_t__*) ;

__attribute__((used)) static DWORD QueryDWORD(HKEY hKey, LPCTSTR pszValueName, DWORD Default)
{
    DWORD dwData, dwType, cbData;
    LONG lRes;

    dwType = REG_DWORD;
    cbData = sizeof(DWORD);

    lRes = RegQueryValueEx(
                hKey,
                pszValueName,
                ((void*)0),
                &dwType,
                (LPBYTE)&dwData,
                &cbData);

    if (lRes != ERROR_SUCCESS || dwType != REG_DWORD)
        return Default;

    return dwData;
}
