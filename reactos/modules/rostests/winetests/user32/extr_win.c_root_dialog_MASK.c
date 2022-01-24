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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  DM_GETDEFID ; 
 int DS_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WS_CHILD ; 
 int WS_EX_CONTROLPARENT ; 
 int WS_POPUP ; 

__attribute__((used)) static HWND FUNC3(HWND hwnd)
{
    while ((FUNC2(hwnd, GWL_EXSTYLE) & WS_EX_CONTROLPARENT) &&
           (FUNC2(hwnd, GWL_STYLE) & (WS_CHILD|WS_POPUP)) == WS_CHILD)
    {
        HWND parent = FUNC1(hwnd);

        /* simple detector for a window being a dialog */
        if (!FUNC0(parent, DM_GETDEFID, 0, 0))
            break;

        hwnd = parent;

        if (!(FUNC2(hwnd, GWL_STYLE) & DS_CONTROL))
            break;
    }

    return hwnd;
}