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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_GETTEXTMARGIN ; 
 int /*<<< orphan*/  BCM_SETTEXTMARGIN ; 
 scalar_t__ BS_DEFCOMMANDLINK ; 
 scalar_t__ BS_PUSHBUTTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HWND hwnd;
    RECT margin_in;
    RECT margin_out;
    BOOL ret;
    DWORD type;

    FUNC4(&margin_in, 2, 1, 3, 4);
    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        hwnd = FUNC6(type, NULL);
        FUNC7(hwnd != NULL, "Expect hwnd not null\n");

        /* Get text margin when it is unset */
        ret = FUNC3(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        FUNC7(ret, "Expect ret to be true\n");
        FUNC7(FUNC2(&margin_out), "Expect margin empty\n");

        /* Successful get and set text margin */
        ret = FUNC3(hwnd, BCM_SETTEXTMARGIN, 0, (LPARAM)&margin_in);
        FUNC7(ret, "Expect ret to be true\n");
        FUNC5(&margin_out);
        ret = FUNC3(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        FUNC7(ret, "Expect ret to be true\n");
        FUNC7(FUNC1(&margin_in, &margin_out), "Expect margins to be equal\n");

        /* BCM_SETTEXTMARGIN null pointer handling */
        ret = FUNC3(hwnd, BCM_SETTEXTMARGIN, 0, 0);
        FUNC7(!ret, "Expect ret to be false\n");
        FUNC5(&margin_out);
        ret = FUNC3(hwnd, BCM_GETTEXTMARGIN, 0, (LPARAM)&margin_out);
        FUNC7(ret, "Expect ret to be true\n");
        FUNC7(FUNC1(&margin_in, &margin_out), "Expect margins to be equal\n");

        /* BCM_GETTEXTMARGIN null pointer handling */
        ret = FUNC3(hwnd, BCM_SETTEXTMARGIN, 0, (LPARAM)&margin_in);
        FUNC7(ret, "Expect ret to be true\n");
        ret = FUNC3(hwnd, BCM_GETTEXTMARGIN, 0, 0);
        FUNC7(!ret, "Expect ret to be true\n");

        FUNC0(hwnd);
    }
}