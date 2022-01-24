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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int TVS_FULLROWSELECT ; 
 int TVS_HASLINES ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD style;
    HWND hwnd;

    /* try to create both with TVS_HASLINES and TVS_FULLROWSELECT */
    hwnd = FUNC3(TVS_FULLROWSELECT);

    style = FUNC1(hwnd, GWL_STYLE);
    FUNC4((style & (TVS_FULLROWSELECT | TVS_HASLINES)) == (TVS_FULLROWSELECT | TVS_HASLINES), "got style 0x%08x\n", style);

    FUNC0(hwnd);

    /* create just with TVS_HASLINES, try to enable TVS_FULLROWSELECT later */
    hwnd = FUNC3(0);

    style = FUNC1(hwnd, GWL_STYLE);
    FUNC2(hwnd, GWL_STYLE, style | TVS_FULLROWSELECT);
    style = FUNC1(hwnd, GWL_STYLE);
    FUNC4(style & TVS_FULLROWSELECT, "got style 0x%08x\n", style);

    FUNC0(hwnd);
}