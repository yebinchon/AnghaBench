#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cbSize; } ;
typedef  TYPE_1__ MENUITEMINFOA ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_MENU_ITEM_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static BOOL FUNC7(void)
{
    HMENU hmenu;
    MENUITEMINFOA info;
    BOOL rc;

    hmenu = FUNC0();

    FUNC5(&info, 0, sizeof(MENUITEMINFOA));
    info.cbSize= sizeof(MENUITEMINFOA);
    FUNC4(0xdeadbeef);
    rc = FUNC3(hmenu, 0, TRUE, &info);
    /* Win9x  : 0xdeadbeef
     * NT4    : ERROR_INVALID_PARAMETER
     * >= W2K : ERROR_MENU_ITEM_NOT_FOUND
     */
    if (!rc && FUNC2() != ERROR_MENU_ITEM_NOT_FOUND)
    {
        FUNC6("NT4 and below can't handle a bigger MENUITEMINFO struct\n");
        FUNC1(hmenu);
        return FALSE;
    }

    FUNC1(hmenu);
    return TRUE;
}