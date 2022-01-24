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
typedef  int /*<<< orphan*/  UINT ;
typedef  int REGSAM ;
typedef  scalar_t__ MSIINSTALLCONTEXT ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * szLocalSid ; 
 int /*<<< orphan*/  szUserDataProducts_fmt ; 

UINT FUNC10(LPCWSTR szProduct, MSIINSTALLCONTEXT context)
{
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR *usersid, squashed_pc[SQUASHED_GUID_SIZE], keypath[0x200];
    HKEY hkey;
    LONG r;

    if (!FUNC9( szProduct, squashed_pc )) return ERROR_FUNCTION_FAILED;
    FUNC5("%s squashed %s\n", FUNC6(szProduct), FUNC6(squashed_pc));

    if (context == MSIINSTALLCONTEXT_MACHINE)
        FUNC8(keypath, szUserDataProducts_fmt, szLocalSid);
    else
    {
        if (!(usersid = FUNC7()))
        {
            FUNC0("Failed to retrieve user SID\n");
            return ERROR_FUNCTION_FAILED;
        }
        FUNC8(keypath, szUserDataProducts_fmt, usersid);
        FUNC1(usersid);
    }

    if (FUNC4(HKEY_LOCAL_MACHINE, keypath, 0, access, &hkey)) return ERROR_SUCCESS;
    r = FUNC3( hkey, squashed_pc );
    FUNC2(hkey);
    return r;
}