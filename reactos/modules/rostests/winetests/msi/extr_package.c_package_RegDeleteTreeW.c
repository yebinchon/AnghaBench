
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szNameBuf ;
typedef int WCHAR ;
typedef int REGSAM ;
typedef scalar_t__ LSTATUS ;
typedef int * LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyW (int ,int *) ;
 scalar_t__ RegDeleteValueW (int ,int *) ;
 scalar_t__ RegEnumKeyExW (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int *,int*,int *,int *,int*,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int max (int,int) ;
 scalar_t__ pRegDeleteKeyExW (int ,int *,int ,int ) ;

__attribute__((used)) static LSTATUS package_RegDeleteTreeW(HKEY hKey, LPCWSTR lpszSubKey, REGSAM access)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    WCHAR szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;

    if(lpszSubKey)
    {
        ret = RegOpenKeyExW(hKey, lpszSubKey, 0, access, &hSubKey);
        if (ret) return ret;
    }

    ret = RegQueryInfoKeyW(hSubKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
            &dwMaxSubkeyLen, ((void*)0), ((void*)0), &dwMaxValueLen, ((void*)0), ((void*)0), ((void*)0));
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = max(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > sizeof(szNameBuf)/sizeof(WCHAR))
    {

        if (!(lpszName = HeapAlloc( GetProcessHeap(), 0, dwMaxLen*sizeof(WCHAR))))
        {
            ret = ERROR_NOT_ENOUGH_MEMORY;
            goto cleanup;
        }
    }


    while (TRUE)
    {
        dwSize = dwMaxLen;
        if (RegEnumKeyExW(hSubKey, 0, lpszName, &dwSize, ((void*)0),
                          ((void*)0), ((void*)0), ((void*)0))) break;

        ret = package_RegDeleteTreeW(hSubKey, lpszName, access);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
    {
        if (pRegDeleteKeyExW)
            ret = pRegDeleteKeyExW(hKey, lpszSubKey, access, 0);
        else
            ret = RegDeleteKeyW(hKey, lpszSubKey);
    }
    else
        while (TRUE)
        {
            dwSize = dwMaxLen;
            if (RegEnumValueW(hKey, 0, lpszName, &dwSize,
                  ((void*)0), ((void*)0), ((void*)0), ((void*)0))) break;

            ret = RegDeleteValueW(hKey, lpszName);
            if (ret) goto cleanup;
        }

cleanup:
    if (lpszName != szNameBuf)
        HeapFree(GetProcessHeap(), 0, lpszName);
    if(lpszSubKey)
        RegCloseKey(hSubKey);
    return ret;
}
