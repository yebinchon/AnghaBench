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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ; 
 scalar_t__ MSIINSTALLCONTEXT_USERUNMANAGED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int SQUASHED_GUID_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szInstaller_LocalClassesProd ; 
 int /*<<< orphan*/  szInstaller_LocalManagedProd_fmt ; 
 int /*<<< orphan*/  szUserProducts ; 

UINT FUNC11(LPCWSTR szProduct, LPCWSTR szUserSid, MSIINSTALLCONTEXT context, HKEY *key, BOOL create)
{
    HKEY root = HKEY_LOCAL_MACHINE;
    REGSAM access = KEY_WOW64_64KEY | KEY_ALL_ACCESS;
    WCHAR *usersid = NULL, squashed_pc[SQUASHED_GUID_SIZE], keypath[MAX_PATH];

    if (!FUNC8( szProduct, squashed_pc )) return ERROR_FUNCTION_FAILED;
    FUNC4("%s squashed %s\n", FUNC5(szProduct), FUNC5(squashed_pc));

    if (context == MSIINSTALLCONTEXT_MACHINE)
    {
        FUNC10(keypath, szInstaller_LocalClassesProd);
        FUNC9( keypath, squashed_pc );
    }
    else if (context == MSIINSTALLCONTEXT_USERUNMANAGED)
    {
        root = HKEY_CURRENT_USER;
        FUNC10(keypath, szUserProducts);
        FUNC9( keypath, squashed_pc );
    }
    else
    {
        if (!szUserSid)
        {
            if (!(usersid = FUNC6()))
            {
                FUNC0("Failed to retrieve user SID\n");
                return ERROR_FUNCTION_FAILED;
            }
            szUserSid = usersid;
        }
        FUNC7( keypath, szInstaller_LocalManagedProd_fmt, szUserSid, squashed_pc );
        FUNC1(usersid);
    }
    if (create) return FUNC2(root, keypath, 0, NULL, 0, access, NULL, key, NULL);
    return FUNC3(root, keypath, 0, access, key);
}