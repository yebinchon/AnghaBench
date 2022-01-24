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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  REGSAM ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC8(HKEY hkeyParent, LPCSTR subkey, REGSAM access)
{
    UINT ret;
    CHAR *string = NULL;
    HKEY hkey;
    DWORD dwSize;

    ret = FUNC5(hkeyParent, subkey, 0, access, &hkey);
    if (ret != ERROR_SUCCESS) return ret;
    ret = FUNC6(hkey, NULL, NULL, NULL, NULL, &dwSize, NULL, NULL, NULL, NULL, NULL, NULL);
    if (ret != ERROR_SUCCESS) return ret;
    if (!(string = FUNC1(FUNC0(), 0, ++dwSize))) return ERROR_NOT_ENOUGH_MEMORY;

    while (FUNC4(hkey, 0, string, dwSize) == ERROR_SUCCESS)
        FUNC8(hkey, string, access);

    FUNC3(hkey);
    FUNC2(FUNC0(), 0, string);
    FUNC7(hkeyParent, subkey, access);
    return ERROR_SUCCESS;
}