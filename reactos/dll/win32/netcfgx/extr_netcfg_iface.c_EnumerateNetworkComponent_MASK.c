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
typedef  int /*<<< orphan*/  NetCfgComponentItem ;
typedef  char* LPOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 

HRESULT
FUNC7(
    const GUID *pGuid, NetCfgComponentItem ** pHead)
{
    HKEY hKey;
    LPOLESTR pszGuid;
    HRESULT hr;
    WCHAR szName[150];

    hr = FUNC5(pGuid, &pszGuid);
    if (FUNC4(hr))
    {
        FUNC6(szName, L"SYSTEM\\CurrentControlSet\\Control\\Network\\%s", pszGuid);
        if (FUNC3(HKEY_LOCAL_MACHINE, szName, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
        {
            hr = FUNC1(hKey, pGuid, pHead);
            FUNC2(hKey);
        }
        FUNC0(pszGuid);
    }
    return hr;
}