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
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ IDCANCEL ; 
 scalar_t__ IDOK ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOWNOACTIVATE ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ psh1 ; 
 scalar_t__ rad1 ; 
 scalar_t__ rad2 ; 
 scalar_t__ rad3 ; 
 scalar_t__ rad5 ; 
 scalar_t__ rad6 ; 
 scalar_t__ rad7 ; 

__attribute__((used)) static void
FUNC6(HWND hwnd)
{
    HWND hCtrl;
    HWND hRad1, hRad2, hRad3, hPsh1, hRad5, hRad6, hRad7, hOK, hCancel;

    // check control IDs
    hCtrl = FUNC1(hwnd, rad1);
    FUNC5(FUNC0(hCtrl) == rad1, "\n");
    hCtrl = FUNC1(hwnd, rad2);
    FUNC5(FUNC0(hCtrl) == rad2, "\n");
    hCtrl = FUNC1(hwnd, rad3);
    FUNC5(FUNC0(hCtrl) == rad3, "\n");
    hCtrl = FUNC1(hwnd, psh1);
    FUNC5(FUNC0(hCtrl) == psh1, "\n");
    hCtrl = FUNC1(hwnd, rad5);
    FUNC5(FUNC0(hCtrl) == rad5, "\n");
    hCtrl = FUNC1(hwnd, rad6);
    FUNC5(FUNC0(hCtrl) == rad6, "\n");
    hCtrl = FUNC1(hwnd, rad7);
    FUNC5(FUNC0(hCtrl) == rad7, "\n");
    hCtrl = FUNC1(hwnd, IDOK);
    FUNC5(FUNC0(hCtrl) == IDOK, "\n");
    hCtrl = FUNC1(hwnd, IDCANCEL);
    FUNC5(FUNC0(hCtrl) == IDCANCEL, "\n");

    // get dialog items
    hRad1 = FUNC1(hwnd, rad1);
    hRad2 = FUNC1(hwnd, rad2);
    hRad3 = FUNC1(hwnd, rad3);
    hPsh1 = FUNC1(hwnd, psh1);
    hRad5 = FUNC1(hwnd, rad5);
    hRad6 = FUNC1(hwnd, rad6);
    hRad7 = FUNC1(hwnd, rad7);
    hOK = FUNC1(hwnd, IDOK);
    hCancel = FUNC1(hwnd, IDCANCEL);

    // group next
    hCtrl = FUNC3(hwnd, hRad1, FALSE);
    FUNC5(hCtrl == hRad2, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad2, FALSE);
    FUNC5(hCtrl == hRad3, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad3, FALSE);
    FUNC5(hCtrl == hPsh1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hPsh1, FALSE);
    FUNC5(hCtrl == hRad5, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad5, FALSE);
    FUNC5(hCtrl == hRad6, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad6, FALSE);
    FUNC5(hCtrl == hRad7, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad7, FALSE);
    FUNC5(hCtrl == hOK, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hOK, FALSE);
    FUNC5(hCtrl == hCancel, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hCancel, FALSE);
    FUNC5(hCtrl == hRad1, "hCtrl is %s\n", FUNC2(hCtrl));

    // group prev
    hCtrl = FUNC3(hwnd, hRad1, TRUE);
    FUNC5(hCtrl == hCancel, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad2, TRUE);
    FUNC5(hCtrl == hRad1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad3, TRUE);
    FUNC5(hCtrl == hRad2, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hPsh1, TRUE);
    FUNC5(hCtrl == hRad3, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad5, TRUE);
    FUNC5(hCtrl == hPsh1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad6, TRUE);
    FUNC5(hCtrl == hRad5, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad7, TRUE);
    FUNC5(hCtrl == hRad6, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hOK, TRUE);
    FUNC5(hCtrl == hRad7, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hCancel, TRUE);
    FUNC5(hCtrl == hOK, "hCtrl is %s\n", FUNC2(hCtrl));

    // hide
    FUNC5(FUNC4(hRad3, SW_HIDE) != 0, "\n");
    FUNC5(FUNC4(hRad6, SW_HIDE) != 0, "\n");

    // group next with hidden
    hCtrl = FUNC3(hwnd, hRad1, FALSE);
    FUNC5(hCtrl == hRad2, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad2, FALSE);
    FUNC5(hCtrl == hPsh1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hPsh1, FALSE);
    FUNC5(hCtrl == hRad5, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad5, FALSE);
    FUNC5(hCtrl == hRad7, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad7, FALSE);
    FUNC5(hCtrl == hOK, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hOK, FALSE);
    FUNC5(hCtrl == hCancel, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hCancel, FALSE);
    FUNC5(hCtrl == hRad1, "hCtrl is %s\n", FUNC2(hCtrl));

    // group prev with hidden
    hCtrl = FUNC3(hwnd, hRad1, TRUE);
    FUNC5(hCtrl == hCancel, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad2, TRUE);
    FUNC5(hCtrl == hRad1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hPsh1, TRUE);
    FUNC5(hCtrl == hRad2, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad5, TRUE);
    FUNC5(hCtrl == hPsh1, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hRad7, TRUE);
    FUNC5(hCtrl == hRad5, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hOK, TRUE);
    FUNC5(hCtrl == hRad7, "hCtrl is %s\n", FUNC2(hCtrl));
    hCtrl = FUNC3(hwnd, hCancel, TRUE);
    FUNC5(hCtrl == hOK, "hCtrl is %s\n", FUNC2(hCtrl));

    // show
    FUNC4(hRad3, SW_SHOWNOACTIVATE);
    FUNC4(hRad6, SW_SHOWNOACTIVATE);
}