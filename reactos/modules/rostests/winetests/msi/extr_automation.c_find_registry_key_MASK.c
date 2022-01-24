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
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC8(HKEY hkeyParent, LPCSTR subkey, LPCSTR findkey, REGSAM access, HKEY *phkey)
{
    UINT ret;
    CHAR *string = NULL;
    int idx = 0;
    HKEY hkey;
    DWORD dwSize;
    BOOL found = FALSE;

    *phkey = 0;

    ret = FUNC5(hkeyParent, subkey, 0, access, &hkey);
    if (ret != ERROR_SUCCESS) return ret;
    ret = FUNC6(hkey, NULL, NULL, NULL, NULL, &dwSize, NULL, NULL, NULL, NULL, NULL, NULL);
    if (ret != ERROR_SUCCESS) return ret;
    if (!(string = FUNC1(FUNC0(), 0, ++dwSize))) return ERROR_NOT_ENOUGH_MEMORY;

    while (!found &&
           FUNC4(hkey, idx++, string, dwSize) == ERROR_SUCCESS)
    {
        if (!FUNC7(string, findkey))
        {
            *phkey = hkey;
            found = TRUE;
        }
        else if (FUNC8(hkey, string, findkey, access, phkey) == ERROR_SUCCESS) found = TRUE;
    }

    if (*phkey != hkey) FUNC3(hkey);
    FUNC2(FUNC0(), 0, string);
    return (found ? ERROR_SUCCESS : ERROR_FILE_NOT_FOUND);
}