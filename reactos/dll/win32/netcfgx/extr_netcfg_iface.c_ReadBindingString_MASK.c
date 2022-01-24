#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {char* szBindName; int /*<<< orphan*/ * pszBinding; } ;
typedef  TYPE_1__ NetCfgComponentItem ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

HRESULT
FUNC6(
    NetCfgComponentItem *Item)
{
    WCHAR szBuffer[200];
    HKEY hKey;
    DWORD dwType, dwSize;

    if (Item == NULL || Item->szBindName == NULL)
        return S_OK;

    FUNC5(szBuffer, L"SYSTEM\\CurrentControlSet\\Services\\");
    FUNC4(szBuffer, Item->szBindName);
    FUNC4(szBuffer, L"\\Linkage");

    if (FUNC2(HKEY_LOCAL_MACHINE, szBuffer, 0, KEY_READ, &hKey) == ERROR_SUCCESS)
    {
        dwSize = 0;
        FUNC3(hKey, L"Bind", NULL, &dwType, NULL, &dwSize);

        if (dwSize != 0)
        {
            Item->pszBinding = FUNC0(dwSize);
            if (Item->pszBinding == NULL)
                return E_OUTOFMEMORY;

            FUNC3(hKey, L"Bind", NULL, &dwType, (LPBYTE)Item->pszBinding, &dwSize);
        }

        FUNC1(hKey);
    }

    return S_OK;
}