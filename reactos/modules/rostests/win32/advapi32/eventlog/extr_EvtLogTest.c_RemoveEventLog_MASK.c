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
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int KEY_CREATE_SUB_KEY ; 
 int KEY_ENUMERATE_SUB_KEYS ; 
 int KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

BOOL FUNC10(LPCWSTR EventLogName)
{
    BOOL Success = FALSE;
    LONG lRet;
    HKEY hKey, hEventKey;
    DWORD MaxKeyNameLen, KeyNameLen;
    LPWSTR Buf = NULL;

    FUNC9(L"Deleting log %s...", EventLogName);

    lRet = FUNC7(HKEY_LOCAL_MACHINE,
                         L"SYSTEM\\CurrentControlSet\\Services\\Eventlog",
                         0, KEY_CREATE_SUB_KEY,
                         &hKey);
    if (lRet != ERROR_SUCCESS)
        goto Quit;

    lRet = FUNC7(hKey,
                         EventLogName,
                         0, KEY_ENUMERATE_SUB_KEYS | KEY_QUERY_VALUE,
                         &hEventKey);
    if (lRet != ERROR_SUCCESS)
        goto Quit;

    lRet = FUNC8(hEventKey,
                            NULL, NULL, NULL, NULL,
                            &MaxKeyNameLen,
                            NULL, NULL, NULL, NULL, NULL, NULL);
    if (lRet != ERROR_SUCCESS)
        goto Quit;

    MaxKeyNameLen++;

    Buf = (LPWSTR)FUNC1(FUNC0(), 0, MaxKeyNameLen * sizeof(WCHAR));
    if (!Buf)
        goto Quit;

    KeyNameLen = MaxKeyNameLen;
    while (FUNC5(hEventKey,
                         0,
                         Buf,
                         &KeyNameLen,
                         NULL, NULL, NULL, NULL) == ERROR_SUCCESS)
    {
        FUNC4(hEventKey, Buf);
        KeyNameLen = MaxKeyNameLen;
    }

    FUNC6(hEventKey);

    FUNC2(FUNC0(), 0, Buf);

    Success = TRUE;

Quit:
    if (Success)
    {
        FUNC3(hEventKey);
        FUNC4(hKey, EventLogName);

        FUNC9(L"Success\n");
    }
    else
    {
        if (hEventKey)
            FUNC3(hEventKey);

        FUNC9(L"Failure\n");
    }

    if (hKey)
        FUNC3(hKey);

    return Success;
}