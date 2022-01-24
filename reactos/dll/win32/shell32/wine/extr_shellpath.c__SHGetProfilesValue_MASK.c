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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_PATH ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static HRESULT FUNC7(HKEY profilesKey, LPCWSTR szValueName,
 LPWSTR szValue, LPCWSTR szDefault)
{
    HRESULT hr;
    DWORD type, dwPathLen = MAX_PATH * sizeof(WCHAR);
    LONG lRet;

    FUNC3("%p,%s,%p,%s\n", profilesKey, FUNC4(szValueName), szValue,
     FUNC4(szDefault));
    lRet = FUNC1(profilesKey, szValueName, NULL, &type,
     (LPBYTE)szValue, &dwPathLen);
    if (!lRet && (type == REG_SZ || type == REG_EXPAND_SZ) && dwPathLen
     && *szValue)
    {
        dwPathLen /= sizeof(WCHAR);
        szValue[dwPathLen] = '\0';
        hr = S_OK;
    }
    else
    {
        /* Missing or invalid value, set a default */
        FUNC5(szValue, szDefault, MAX_PATH);
        FUNC3("Setting missing value %s to %s\n", FUNC4(szValueName),
                                                  FUNC4(szValue));
        lRet = FUNC2(profilesKey, szValueName, 0, REG_EXPAND_SZ,
                              (LPBYTE)szValue,
                              (FUNC6(szValue) + 1) * sizeof(WCHAR));
        if (lRet)
            hr = FUNC0(lRet);
        else
            hr = S_OK;
    }
    FUNC3("returning 0x%08x (output value is %s)\n", hr, FUNC4(szValue));
    return hr;
}