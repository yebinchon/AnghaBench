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
typedef  scalar_t__ UINT ;
typedef  int REGSAM ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szInstaller_Components ; 
 int /*<<< orphan*/  szUserComponents ; 

UINT FUNC8(LPCWSTR szComponent, HKEY *key, BOOL create)
{
    WCHAR squashed_cc[SQUASHED_GUID_SIZE], keypath[0x200];
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    UINT ret;

    if (!FUNC5( szComponent, squashed_cc)) return ERROR_FUNCTION_FAILED;
    FUNC3("%s squashed %s\n", FUNC4(szComponent), FUNC4(squashed_cc));

    FUNC7(keypath, szUserComponents);
    FUNC6( keypath, squashed_cc );

    if (create) return FUNC0(HKEY_CURRENT_USER, keypath, key);
    ret = FUNC2(HKEY_CURRENT_USER, keypath, key);
    if (ret != ERROR_FILE_NOT_FOUND) return ret;

    FUNC7(keypath, szInstaller_Components);
    FUNC6( keypath, squashed_cc );
    return FUNC1( HKEY_LOCAL_MACHINE, keypath, 0, access, key );
}