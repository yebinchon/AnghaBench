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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOL
FUNC8(PWSTR* Environment)
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

    Error = FUNC5(HKEY_LOCAL_MACHINE,
                          L"SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Environment",
                          0,
                          KEY_QUERY_VALUE,
                          &hEnvKey);
    if (Error != ERROR_SUCCESS)
    {
        FUNC0("RegOpenKeyExW() failed (Error %ld)\n", Error);
        return FALSE;
    }

    Error = FUNC6(hEnvKey,
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
        FUNC0("RegQueryInforKey() failed (Error %ld)\n", Error);
        FUNC3(hEnvKey);
        return FALSE;
    }

    if (dwValues == 0)
    {
        FUNC3(hEnvKey);
        return TRUE;
    }

    /* Allocate buffers */
    dwMaxValueNameLength++;
    lpValueName = FUNC1(LPTR, dwMaxValueNameLength * sizeof(WCHAR));
    if (lpValueName == NULL)
    {
        FUNC3(hEnvKey);
        return FALSE;
    }

    lpValueData = FUNC1(LPTR, dwMaxValueDataLength);
    if (lpValueData == NULL)
    {
        FUNC2(lpValueName);
        FUNC3(hEnvKey);
        return FALSE;
    }

    /* Enumerate values */
    for (i = 0; i < dwValues; i++)
    {
        dwValueNameLength = dwMaxValueNameLength;
        dwValueDataLength = dwMaxValueDataLength;

        Error = FUNC4(hEnvKey,
                              i,
                              lpValueName,
                              &dwValueNameLength,
                              NULL,
                              &dwType,
                              (LPBYTE)lpValueData,
                              &dwValueDataLength);
        if (Error == ERROR_SUCCESS)
        {
            /* Set environment variable */
            FUNC7(Environment,
                                       lpValueName,
                                       lpValueData,
                                       (dwType == REG_EXPAND_SZ));
        }
        else
        {
            FUNC2(lpValueData);
            FUNC2(lpValueName);
            FUNC3(hEnvKey);

            return FALSE;
        }
    }

    FUNC2(lpValueData);
    FUNC2(lpValueName);
    FUNC3(hEnvKey);

    return TRUE;
}