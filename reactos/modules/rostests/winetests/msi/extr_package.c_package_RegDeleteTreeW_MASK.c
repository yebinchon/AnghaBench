#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  szNameBuf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  REGSAM ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LSTATUS FUNC12(HKEY hKey, LPCWSTR lpszSubKey, REGSAM access)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    WCHAR szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;

    if(lpszSubKey)
    {
        ret = FUNC8(hKey, lpszSubKey, 0, access, &hSubKey);
        if (ret) return ret;
    }

    ret = FUNC9(hSubKey, NULL, NULL, NULL, NULL,
            &dwMaxSubkeyLen, NULL, NULL, &dwMaxValueLen, NULL, NULL, NULL);
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = FUNC10(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > sizeof(szNameBuf)/sizeof(WCHAR))
    {
        /* Name too big: alloc a buffer for it */
        if (!(lpszName = FUNC1( FUNC0(), 0, dwMaxLen*sizeof(WCHAR))))
        {
            ret = ERROR_NOT_ENOUGH_MEMORY;
            goto cleanup;
        }
    }

    /* Recursively delete all the subkeys */
    while (TRUE)
    {
        dwSize = dwMaxLen;
        if (FUNC6(hSubKey, 0, lpszName, &dwSize, NULL,
                          NULL, NULL, NULL)) break;

        ret = FUNC12(hSubKey, lpszName, access);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
    {
        if (&pRegDeleteKeyExW)
            ret = FUNC11(hKey, lpszSubKey, access, 0);
        else
            ret = FUNC4(hKey, lpszSubKey);
    }
    else
        while (TRUE)
        {
            dwSize = dwMaxLen;
            if (FUNC7(hKey, 0, lpszName, &dwSize,
                  NULL, NULL, NULL, NULL)) break;

            ret = FUNC5(hKey, lpszName);
            if (ret) goto cleanup;
        }

cleanup:
    if (lpszName != szNameBuf)
        FUNC2(FUNC0(), 0, lpszName);
    if(lpszSubKey)
        FUNC3(hSubKey);
    return ret;
}