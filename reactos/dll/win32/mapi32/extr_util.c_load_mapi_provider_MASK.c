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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC9(HKEY hkeyMail, LPCWSTR valueName, HMODULE *mapi_provider)
{
    static const WCHAR mapi32_dll[] = {'m','a','p','i','3','2','.','d','l','l',0 };

    DWORD dwType, dwLen = 0;
    LPWSTR dllPath;

    /* Check if we have a value set for DLLPath */
    if ((FUNC5(hkeyMail, valueName, NULL, &dwType, NULL, &dwLen) == ERROR_SUCCESS) &&
        ((dwType == REG_SZ) || (dwType == REG_EXPAND_SZ)) && (dwLen > 0))
    {
        dllPath = FUNC2(FUNC1(), 0, dwLen);

        if (dllPath)
        {
            FUNC5(hkeyMail, valueName, NULL, NULL, (LPBYTE)dllPath, &dwLen);

            /* Check that this value doesn't refer to mapi32.dll (eg, as Outlook does) */
            if (FUNC8(dllPath, mapi32_dll) != 0)
            {
                if (dwType == REG_EXPAND_SZ)
                {
                    DWORD dwExpandLen;
                    LPWSTR dllPathExpanded;

                    /* Expand the path if necessary */
                    dwExpandLen = FUNC0(dllPath, NULL, 0);
                    dllPathExpanded = FUNC2(FUNC1(), 0, sizeof(WCHAR) * dwExpandLen + 1);

                    if (dllPathExpanded)
                    {
                        FUNC0(dllPath, dllPathExpanded, dwExpandLen + 1);

                        FUNC3(FUNC1(), 0, dllPath);
                        dllPath = dllPathExpanded;
                    }
                }

                /* Load the DLL */
                FUNC6("loading %s\n", FUNC7(dllPath));
                *mapi_provider = FUNC4(dllPath);
            }

            FUNC3(FUNC1(), 0, dllPath);
        }
    }
}