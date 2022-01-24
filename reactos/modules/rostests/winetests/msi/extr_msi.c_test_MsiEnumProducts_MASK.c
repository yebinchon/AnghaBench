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
typedef  int REGSAM ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC8 () ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    UINT r;
    BOOL found1, found2, found3;
    DWORD index;
    char product1[39], product2[39], product3[39], guid[39];
    char product_squashed1[33], product_squashed2[33], product_squashed3[33];
    char keypath1[MAX_PATH], keypath2[MAX_PATH], keypath3[MAX_PATH];
    char *usersid;
    HKEY key1, key2, key3;
    REGSAM access = KEY_ALL_ACCESS;

    FUNC6(product1, product_squashed1);
    FUNC6(product2, product_squashed2);
    FUNC6(product3, product_squashed3);
    usersid = FUNC8();

    if (is_wow64)
        access |= KEY_WOW64_64KEY;

    FUNC13(keypath2, "Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\Managed\\");
    FUNC11(keypath2, usersid);
    FUNC11(keypath2, "\\Installer\\Products\\");
    FUNC11(keypath2, product_squashed2);

    r = FUNC4(HKEY_LOCAL_MACHINE, keypath2, 0, NULL, 0, access, NULL, &key2, NULL);
    if (r == ERROR_ACCESS_DENIED)
    {
        FUNC10("Not enough rights to perform tests\n");
        FUNC0(usersid);
        return;
    }
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    FUNC13(keypath1, "Software\\Classes\\Installer\\Products\\");
    FUNC11(keypath1, product_squashed1);

    r = FUNC4(HKEY_LOCAL_MACHINE, keypath1, 0, NULL, 0, access, NULL, &key1, NULL);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    FUNC13(keypath3, "Software\\Microsoft\\Installer\\Products\\");
    FUNC11(keypath3, product_squashed3);

    r = FUNC3(HKEY_CURRENT_USER, keypath3, &key3);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    index = 0;
    r = FUNC1(index, guid);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = FUNC1(index, NULL);
    FUNC9(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    index = 2;
    r = FUNC1(index, guid);
    FUNC9(r == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", r);

    index = 0;
    r = FUNC1(index, guid);
    FUNC9(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    found1 = found2 = found3 = FALSE;
    while ((r = FUNC1(index, guid)) == ERROR_SUCCESS)
    {
        if (!FUNC12(product1, guid)) found1 = TRUE;
        if (!FUNC12(product2, guid)) found2 = TRUE;
        if (!FUNC12(product3, guid)) found3 = TRUE;
        index++;
    }
    FUNC9(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %u\n", r);
    FUNC9(found1, "product1 not found\n");
    FUNC9(found2, "product2 not found\n");
    FUNC9(found3, "product3 not found\n");

    FUNC7(key1, "", access & KEY_WOW64_64KEY);
    FUNC7(key2, "", access & KEY_WOW64_64KEY);
    FUNC5(key3, "");
    FUNC2(key1);
    FUNC2(key2);
    FUNC2(key3);
    FUNC0(usersid);
}