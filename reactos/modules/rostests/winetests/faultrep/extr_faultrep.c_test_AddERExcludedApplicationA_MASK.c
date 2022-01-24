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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 
 int /*<<< orphan*/  regpath_exclude ; 
 int /*<<< orphan*/  regpath_root ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL res;
    LONG lres;
    HKEY hroot;
    HKEY hexclude = 0;

    /* clean state */
    lres = FUNC3(HKEY_LOCAL_MACHINE, regpath_root, &hroot);
    if (lres == ERROR_ACCESS_DENIED)
    {
        FUNC9("Not enough access rights\n");
        return;
    }

    if (!lres)
        lres = FUNC5(hroot, regpath_exclude, &hexclude);

    if (!lres)
        FUNC4(hexclude, "winetest_faultrep.exe");


    FUNC6(0xdeadbeef);
    res = FUNC0(NULL);
    FUNC8(!res, "got %d and 0x%x (expected FALSE)\n", res, FUNC1());

    FUNC6(0xdeadbeef);
    res = FUNC0("");
    FUNC8(!res, "got %d and 0x%x (expected FALSE)\n", res, FUNC1());

    FUNC6(0xdeadbeef);
    /* existence of the path doesn't matter this function succeeded */
    res = FUNC0("winetest_faultrep.exe");
    if (FUNC7())
    {
        /* LastError is not set! */
        FUNC8(!res, "AddERExcludedApplicationA should have failed got %d\n", res);
    }
    else
    {
        FUNC8(res, "AddERExcludedApplicationA failed (le=0x%x)\n", FUNC1());

        /* add, when already present */
        FUNC6(0xdeadbeef);
        res = FUNC0("winetest_faultrep.exe");
        FUNC8(res, "AddERExcludedApplicationA failed (le=0x%x)\n", FUNC1());
    }

    /* cleanup */
    FUNC4(hexclude, "winetest_faultrep.exe");

    FUNC2(hexclude);
    FUNC2(hroot);
}