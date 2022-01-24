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
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  LPDWORD ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LONG
FUNC3(PCWSTR pszSubKey, PCWSTR pszValueName, PVOID pData, LPDWORD cbSize, LPDWORD pType)
{
    HKEY hKey;
    LONG ret;

    FUNC1(HKEY_CURRENT_USER, pszSubKey, 0, KEY_QUERY_VALUE, &hKey);
    ret = FUNC2(hKey, pszValueName, NULL, pType, (LPBYTE)pData, cbSize);
    FUNC0(hKey);
    return ret;
}