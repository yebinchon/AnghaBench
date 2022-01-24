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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
BOOL
FUNC11(PWSTR* Environment,
                   HKEY hKey,
                   LPWSTR lpSubKeyName)
{
    LONG Error;
    HKEY hEnvKey;
    DWORD dwValues;
    DWORD dwMaxValueNameLength;
    DWORD dwMaxValueDataLength;
    DWORD dwValueNameLength;
    DWORD dwValueDataLength;
    DWORD dwType;
    DWORD i;
    LPWSTR lpValueName;
    LPWSTR lpValueData;

    Error = FUNC6(hKey,
                          lpSubKeyName,
                          0,
                          KEY_QUERY_VALUE,
                          &hEnvKey);
    if (Error != ERROR_SUCCESS)
    {
        FUNC1("RegOpenKeyExW() failed (Error %ld)\n", Error);
        FUNC8((DWORD)Error);
        return FALSE;
    }

    Error = FUNC7(hEnvKey,
                            NULL,
                            NULL,
                            NULL,
                            NULL,
                            NULL,
                            NULL,
                            &dwValues,
                            &dwMaxValueNameLength,
                            &dwMaxValueDataLength,
                            NULL,
                            NULL);
    if (Error != ERROR_SUCCESS)
    {
        FUNC1("RegQueryInforKey() failed (Error %ld)\n", Error);
        FUNC4(hEnvKey);
        FUNC8((DWORD)Error);
        return FALSE;
    }

    if (dwValues == 0)
    {
        FUNC4(hEnvKey);
        return TRUE;
    }

    /* Allocate buffers */
    dwMaxValueNameLength++;
    lpValueName = FUNC2(LPTR, dwMaxValueNameLength * sizeof(WCHAR));
    if (lpValueName == NULL)
    {
        FUNC4(hEnvKey);
        return FALSE;
    }

    lpValueData = FUNC2(LPTR, dwMaxValueDataLength);
    if (lpValueData == NULL)
    {
        FUNC3(lpValueName);
        FUNC4(hEnvKey);
        return FALSE;
    }

    /* Enumerate values */
    for (i = 0; i < dwValues; i++)
    {
        dwValueNameLength = dwMaxValueNameLength;
        dwValueDataLength = dwMaxValueDataLength;

        Error = FUNC5(hEnvKey,
                              i,
                              lpValueName,
                              &dwValueNameLength,
                              NULL,
                              &dwType,
                              (LPBYTE)lpValueData,
                              &dwValueDataLength);
        if (Error == ERROR_SUCCESS)
        {
            if (!FUNC10(lpValueName, L"PATH"))
            {
                /* Append 'Path' environment variable */
                FUNC0(Environment,
                                              lpValueName,
                                              lpValueData);
            }
            else
            {
                /* Set environment variable */
                FUNC9(Environment,
                                           lpValueName,
                                           lpValueData,
                                           (dwType == REG_EXPAND_SZ));
            }
        }
        else
        {
            FUNC3(lpValueData);
            FUNC3(lpValueName);
            FUNC4(hEnvKey);

            return FALSE;
        }
    }

    FUNC3(lpValueData);
    FUNC3(lpValueName);
    FUNC4(hEnvKey);

    return TRUE;
}