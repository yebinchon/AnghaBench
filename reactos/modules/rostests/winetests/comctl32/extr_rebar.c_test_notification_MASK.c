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
typedef  int /*<<< orphan*/  MEASUREITEMSTRUCT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_MEASUREITEM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int g_parent_measureitem ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    MEASUREITEMSTRUCT mis;
    HWND rebar;

    rebar = FUNC2();

    g_parent_measureitem = 0;
    FUNC1(rebar, WM_MEASUREITEM, 0, (LPARAM)&mis);
    FUNC3(g_parent_measureitem == 1, "got %d\n", g_parent_measureitem);

    FUNC0(rebar);
}