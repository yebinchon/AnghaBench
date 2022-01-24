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
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static LSTATUS FUNC11(HKEY hKey, LPCSTR lpszSubKey)
{
    LONG ret;
    DWORD dwMaxSubkeyLen, dwMaxValueLen;
    DWORD dwMaxLen, dwSize;
    CHAR szNameBuf[MAX_PATH], *lpszName = szNameBuf;
    HKEY hSubKey = hKey;

    if(lpszSubKey)
    {
        ret = FUNC6(hKey, lpszSubKey, 0, KEY_READ, &hSubKey);
        if (ret) return ret;
    }

    /* Get highest length for keys, values */
    ret = FUNC7(hSubKey, NULL, NULL, NULL, NULL,
            &dwMaxSubkeyLen, NULL, NULL, &dwMaxValueLen, NULL, NULL, NULL);
    if (ret) goto cleanup;

    dwMaxSubkeyLen++;
    dwMaxValueLen++;
    dwMaxLen = FUNC10(dwMaxSubkeyLen, dwMaxValueLen);
    if (dwMaxLen > FUNC0(szNameBuf))
    {
        /* Name too big: alloc a buffer for it */
        if (!(lpszName = FUNC8(dwMaxLen * sizeof(CHAR))))
        {
            ret = ERROR_NOT_ENOUGH_MEMORY;
            goto cleanup;
        }
    }


    /* Recursively delete all the subkeys */
    while (TRUE)
    {
        dwSize = dwMaxLen;
        if (FUNC4(hSubKey, 0, lpszName, &dwSize, NULL,
                          NULL, NULL, NULL)) break;

        ret = FUNC11(hSubKey, lpszName);
        if (ret) goto cleanup;
    }

    if (lpszSubKey)
        ret = FUNC2(hKey, lpszSubKey);
    else
        while (TRUE)
        {
            dwSize = dwMaxLen;
            if (FUNC5(hKey, 0, lpszName, &dwSize,
                  NULL, NULL, NULL, NULL)) break;

            ret = FUNC3(hKey, lpszName);
            if (ret) goto cleanup;
        }

cleanup:
    /* Free buffer if allocated */
    if (lpszName != szNameBuf)
        FUNC9(lpszName);
    if(lpszSubKey)
        FUNC1(hSubKey);
    return ret;
}