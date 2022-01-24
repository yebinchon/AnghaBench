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
struct TYPE_3__ {int cbSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ MENUINFO ;
typedef  int /*<<< orphan*/ * HMENU ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HMENU hmenu;
    MENUINFO mi = {0};
    BOOL ret;
    DWORD gle;

    if (!&pGetMenuInfo)
    {
        FUNC8("GetMenuInfo is not available\n");
        return;
    }

    /* create a menu */
    hmenu = FUNC0();
    FUNC4( hmenu);
    /* test some parameter errors */
    FUNC3(0xdeadbeef);
    ret = FUNC7( hmenu, NULL);
    gle= FUNC2();
    FUNC6( !ret, "GetMenuInfo() should have failed\n");
    FUNC6( gle == ERROR_INVALID_PARAMETER ||
        FUNC5(gle == 0xdeadbeef), /* Win98, WinME */
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);
    FUNC3(0xdeadbeef);
    mi.cbSize = 0;
    ret = FUNC7( hmenu, &mi);
    gle= FUNC2();
    FUNC6( !ret, "GetMenuInfo() should have failed\n");
    FUNC6( gle == ERROR_INVALID_PARAMETER ||
        FUNC5(gle == 0xdeadbeef), /* Win98, WinME */
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);
    FUNC3(0xdeadbeef);
    mi.cbSize = sizeof( MENUINFO);
    ret = FUNC7( hmenu, &mi);
    gle= FUNC2();
    FUNC6( ret, "GetMenuInfo() should have succeeded\n");
    FUNC6( gle == 0xdeadbeef, "GetMenuInfo() error got %u\n", gle);
    FUNC3(0xdeadbeef);
    mi.cbSize = 0;
    ret = FUNC7( NULL, &mi);
    gle= FUNC2();
    FUNC6( !ret, "GetMenuInfo() should have failed\n");
    FUNC6( gle == ERROR_INVALID_PARAMETER ||
        FUNC5(gle == 0xdeadbeef), /* Win98, WinME */
        "GetMenuInfo() error got %u expected %u\n", gle, ERROR_INVALID_PARAMETER);
    /* clean up */
    FUNC1( hmenu);
    return;
}