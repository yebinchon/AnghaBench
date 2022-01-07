
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szNameBuf ;
typedef int REGSAM ;
typedef scalar_t__ LSTATUS ;
typedef char* LPCSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegDeleteValueA (int ,char*) ;
 scalar_t__ RegEnumKeyExA (int ,int ,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueA (int ,int ,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyA (int ,int *,int *,int *,int *,int*,int *,int *,int*,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int max (int,int) ;
 scalar_t__ pRegDeleteKeyExA (int ,char*,int ,int ) ;

__attribute__((used)) static LSTATUS action_RegDeleteTreeA(HKEY hKey, LPCSTR lpszSubKey, REGSAM access)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    char szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;

    if(lpszSubKey)
    {
        ret = RegOpenKeyExA(hKey, lpszSubKey, 0, access, &hSubKey);
        if (ret) return ret;
    }

    ret = RegQueryInfoKeyA(hSubKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
            &dwMaxSubkeyLen, ((void*)0), ((void*)0), &dwMaxValueLen, ((void*)0), ((void*)0), ((void*)0));
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = max(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > sizeof(szNameBuf))
    {

        if (!(lpszName = HeapAlloc( GetProcessHeap(), 0, dwMaxLen)))
        {
            ret = ERROR_NOT_ENOUGH_MEMORY;
            goto cleanup;
        }
    }


    while (TRUE)
    {
        dwSize = dwMaxLen;
        if (RegEnumKeyExA(hSubKey, 0, lpszName, &dwSize, ((void*)0),
                          ((void*)0), ((void*)0), ((void*)0))) break;

        ret = action_RegDeleteTreeA(hSubKey, lpszName, access);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
    {
        if (pRegDeleteKeyExA)
            ret = pRegDeleteKeyExA(hKey, lpszSubKey, access, 0);
        else
            ret = RegDeleteKeyA(hKey, lpszSubKey);
    }
    else
        while (TRUE)
        {
            dwSize = dwMaxLen;
            if (RegEnumValueA(hKey, 0, lpszName, &dwSize,
                  ((void*)0), ((void*)0), ((void*)0), ((void*)0))) break;

            ret = RegDeleteValueA(hKey, lpszName);
            if (ret) goto cleanup;
        }

cleanup:
    if (lpszName != szNameBuf)
        HeapFree(GetProcessHeap(), 0, lpszName);
    if(lpszSubKey)
        RegCloseKey(hSubKey);
    return ret;
}
