
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LSTATUS ;
typedef int * LPCSTR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyA (int ,int *) ;
 scalar_t__ RegDeleteValueA (int ,int *) ;
 scalar_t__ RegEnumKeyExA (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueA (int ,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExA (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyA (int ,int *,int *,int *,int *,int*,int *,int *,int*,int *,int *,int *) ;
 scalar_t__ TRUE ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int max (int,int) ;

__attribute__((used)) static LSTATUS mru_RegDeleteTreeA(HKEY hKey, LPCSTR lpszSubKey)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    CHAR szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;

    if(lpszSubKey)
    {
        ret = RegOpenKeyExA(hKey, lpszSubKey, 0, KEY_READ, &hSubKey);
        if (ret) return ret;
    }


    ret = RegQueryInfoKeyA(hSubKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
            &dwMaxSubkeyLen, ((void*)0), ((void*)0), &dwMaxValueLen, ((void*)0), ((void*)0), ((void*)0));
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = max(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > ARRAY_SIZE(szNameBuf))
    {

        if (!(lpszName = heap_alloc(dwMaxLen * sizeof(CHAR))))
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

        ret = mru_RegDeleteTreeA(hSubKey, lpszName);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
        ret = RegDeleteKeyA(hKey, lpszSubKey);
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
        heap_free(lpszName);
    if(lpszSubKey)
        RegCloseKey(hSubKey);
    return ret;
}
