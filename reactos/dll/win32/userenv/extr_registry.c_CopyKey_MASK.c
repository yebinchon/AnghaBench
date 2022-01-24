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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOL
FUNC15(HKEY hDstKey,
        HKEY hSrcKey)
{
    LONG Error;

#if (_WIN32_WINNT >= 0x0600)
    Error = RegCopyTreeW(hSrcKey,
                         NULL,
                         hDstKey);
    if (Error != ERROR_SUCCESS)
    {
        SetLastError((DWORD)Error);
        return FALSE;
    }

    return TRUE;

#else
    FILETIME LastWrite;
    DWORD dwSubKeys;
    DWORD dwValues;
    DWORD dwType;
    DWORD dwMaxSubKeyNameLength;
    DWORD dwSubKeyNameLength;
    DWORD dwMaxValueNameLength;
    DWORD dwValueNameLength;
    DWORD dwMaxValueLength;
    DWORD dwValueLength;
    DWORD dwDisposition;
    DWORD i;
    LPWSTR lpNameBuffer;
    LPBYTE lpDataBuffer;
    HKEY hDstSubKey;
    HKEY hSrcSubKey;

    FUNC0 ("CopyKey() called \n");

    Error = FUNC12(hSrcKey,
                            NULL,
                            NULL,
                            NULL,
                            &dwSubKeys,
                            &dwMaxSubKeyNameLength,
                            NULL,
                            &dwValues,
                            &dwMaxValueNameLength,
                            &dwMaxValueLength,
                            NULL,
                            NULL);
    if (Error != ERROR_SUCCESS)
    {
        FUNC1("RegQueryInfoKey() failed (Error %lu)\n", Error);
        FUNC14((DWORD)Error);
        return FALSE;
    }

    dwMaxSubKeyNameLength++;
    dwMaxValueNameLength++;

    FUNC0("dwSubKeys %lu\n", dwSubKeys);
    FUNC0("dwMaxSubKeyNameLength %lu\n", dwMaxSubKeyNameLength);
    FUNC0("dwValues %lu\n", dwValues);
    FUNC0("dwMaxValueNameLength %lu\n", dwMaxValueNameLength);
    FUNC0("dwMaxValueLength %lu\n", dwMaxValueLength);

    /* Copy subkeys */
    if (dwSubKeys != 0)
    {
        lpNameBuffer = FUNC4(FUNC3(),
                                 0,
                                 dwMaxSubKeyNameLength * sizeof(WCHAR));
        if (lpNameBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            FUNC14(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        for (i = 0; i < dwSubKeys; i++)
        {
            dwSubKeyNameLength = dwMaxSubKeyNameLength;
            Error = FUNC9(hSrcKey,
                                  i,
                                  lpNameBuffer,
                                  &dwSubKeyNameLength,
                                  NULL,
                                  NULL,
                                  NULL,
                                  &LastWrite);
            if (Error != ERROR_SUCCESS)
            {
                FUNC1("Subkey enumeration failed (Error %lu)\n", Error);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                FUNC14((DWORD)Error);
                return FALSE;
            }

            Error = FUNC8(hDstKey,
                                    lpNameBuffer,
                                    0,
                                    NULL,
                                    REG_OPTION_NON_VOLATILE,
                                    KEY_WRITE,
                                    NULL,
                                    &hDstSubKey,
                                    &dwDisposition);
            if (Error != ERROR_SUCCESS)
            {
                FUNC1("Subkey creation failed (Error %lu)\n", Error);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                FUNC14((DWORD)Error);
                return FALSE;
            }

            Error = FUNC11(hSrcKey,
                                  lpNameBuffer,
                                  0,
                                  KEY_READ,
                                  &hSrcSubKey);
            if (Error != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", Error);
                FUNC6(hDstSubKey);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                FUNC14((DWORD)Error);
                return FALSE;
            }

            if (!FUNC15(hDstSubKey,
                         hSrcSubKey))
            {
                FUNC1("Error: %lu\n", FUNC2());
                FUNC6 (hSrcSubKey);
                FUNC6 (hDstSubKey);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                return FALSE;
            }

            FUNC6(hSrcSubKey);
            FUNC6(hDstSubKey);
        }

        FUNC5(FUNC3(),
                 0,
                 lpNameBuffer);
    }

    /* Copy values */
    if (dwValues != 0)
    {
        lpNameBuffer = FUNC4(FUNC3(),
                                 0,
                                 dwMaxValueNameLength * sizeof(WCHAR));
        if (lpNameBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            FUNC14(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        lpDataBuffer = FUNC4(FUNC3(),
                                 0,
                                 dwMaxValueLength);
        if (lpDataBuffer == NULL)
        {
            FUNC1("Buffer allocation failed\n");
            FUNC5(FUNC3(),
                     0,
                     lpNameBuffer);
            FUNC14(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        for (i = 0; i < dwValues; i++)
        {
            dwValueNameLength = dwMaxValueNameLength;
            dwValueLength = dwMaxValueLength;
            Error = FUNC10(hSrcKey,
                                  i,
                                  lpNameBuffer,
                                  &dwValueNameLength,
                                  NULL,
                                  &dwType,
                                  lpDataBuffer,
                                  &dwValueLength);
            if (Error != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", Error);
                FUNC5(FUNC3(),
                         0,
                         lpDataBuffer);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                FUNC14((DWORD)Error);
                return FALSE;
            }

            Error = FUNC13(hDstKey,
                                   lpNameBuffer,
                                   0,
                                   dwType,
                                   lpDataBuffer,
                                   dwValueLength);
            if (Error != ERROR_SUCCESS)
            {
                FUNC1("Error: %lu\n", Error);
                FUNC5(FUNC3(),
                         0,
                         lpDataBuffer);
                FUNC5(FUNC3(),
                         0,
                         lpNameBuffer);
                FUNC14((DWORD)Error);
                return FALSE;
            }
        }

        FUNC5(FUNC3(),
                 0,
                 lpDataBuffer);

        FUNC5(FUNC3(),
                 0,
                 lpNameBuffer);
    }

    FUNC0("CopyKey() done \n");

    return TRUE;
#endif
}