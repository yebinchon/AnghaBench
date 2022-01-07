
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVOID ;
typedef int PCWSTR ;
typedef int LPDWORD ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int HKEY ;


 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int RegQueryValueExW (int ,int ,int *,int ,int ,int ) ;

LONG
QueryUserRegValueW(PCWSTR pszSubKey, PCWSTR pszValueName, PVOID pData, LPDWORD cbSize, LPDWORD pType)
{
    HKEY hKey;
    LONG ret;

    RegOpenKeyExW(HKEY_CURRENT_USER, pszSubKey, 0, KEY_QUERY_VALUE, &hKey);
    ret = RegQueryValueExW(hKey, pszValueName, ((void*)0), pType, (LPBYTE)pData, cbSize);
    RegCloseKey(hKey);
    return ret;
}
