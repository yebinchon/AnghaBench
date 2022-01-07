
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int REGSAM ;
typedef scalar_t__ LSTATUS ;
typedef int * LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyW (int ,int *) ;
 scalar_t__ RegDeleteValueW (int ,int *) ;
 scalar_t__ RegEnumKeyExW (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int *,int*,int *,int *,int*,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int max (int,int) ;
 scalar_t__ pRegDeleteKeyExW (int ,int *,int,int ) ;

__attribute__((used)) static LSTATUS myRegDeleteTreeW(HKEY hKey, LPCWSTR lpszSubKey, REGSAM view)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    WCHAR szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;
    view &= (KEY_WOW64_64KEY | KEY_WOW64_32KEY);

    if(lpszSubKey)
    {
        ret = RegOpenKeyExW(hKey, lpszSubKey, 0, KEY_READ | view, &hSubKey);
        if (ret) return ret;
    }

    ret = RegQueryInfoKeyW(hSubKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
            &dwMaxSubkeyLen, ((void*)0), ((void*)0), &dwMaxValueLen, ((void*)0), ((void*)0), ((void*)0));
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = max(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > ARRAY_SIZE(szNameBuf))
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

        ret = myRegDeleteTreeW(hSubKey, lpszName, view);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
        if (pRegDeleteKeyExW && view != 0)
            ret = pRegDeleteKeyExW(hKey, lpszSubKey, view, 0);
        else
            ret = RegDeleteKeyW(hKey, lpszSubKey);
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
