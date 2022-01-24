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
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ BST_CHECKED ; 
 scalar_t__ BST_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MK_LBUTTON ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_LBUTTONDOWN ; 
 int /*<<< orphan*/  WM_LBUTTONUP ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  rad1 ; 
 int /*<<< orphan*/  rad2 ; 
 int /*<<< orphan*/  rad3 ; 
 int /*<<< orphan*/  rad5 ; 
 int /*<<< orphan*/  rad6 ; 
 int /*<<< orphan*/  rad7 ; 

__attribute__((used)) static void
FUNC7(HWND hwnd)
{
    HWND hCtrl;
    POINT pt;

    FUNC0(hwnd, rad1, BST_CHECKED);
    FUNC0(hwnd, rad5, BST_CHECKED);

    FUNC6(FUNC3(hwnd, rad1) == BST_CHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad2) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad3) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad5) == BST_CHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad6) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad7) == BST_UNCHECKED, "\n");

    hCtrl = FUNC2(hwnd, rad1);
    pt = FUNC1(hCtrl);
    FUNC5(hCtrl, WM_LBUTTONDOWN, MK_LBUTTON, FUNC4(pt.x, pt.y));
    FUNC5(hCtrl, WM_LBUTTONUP, MK_LBUTTON, FUNC4(pt.x, pt.y));

    FUNC6(FUNC3(hwnd, rad1) == BST_CHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad2) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad3) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad5) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad6) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad7) == BST_UNCHECKED, "\n");

    hCtrl = FUNC2(hwnd, rad5);
    pt = FUNC1(hCtrl);
    FUNC5(hCtrl, WM_LBUTTONDOWN, MK_LBUTTON, FUNC4(pt.x, pt.y));
    FUNC5(hCtrl, WM_LBUTTONUP, MK_LBUTTON, FUNC4(pt.x, pt.y));

    FUNC6(FUNC3(hwnd, rad1) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad2) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad3) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad5) == BST_CHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad6) == BST_UNCHECKED, "\n");
    FUNC6(FUNC3(hwnd, rad7) == BST_UNCHECKED, "\n");
}