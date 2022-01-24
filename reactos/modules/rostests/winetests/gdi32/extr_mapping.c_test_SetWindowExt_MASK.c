#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_7__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ POINT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(HDC hdc, LONG cx, LONG cy, LONG expected_vp_cx, LONG expected_vp_cy)
{
    SIZE windowExt, viewportExt;
    POINT windowOrg, windowOrgAfter, viewportOrg, viewportOrgAfter;

    FUNC3(hdc, &windowOrg);
    FUNC1(hdc, &viewportOrg);

    FUNC4(hdc, cx, cy, NULL);
    FUNC2(hdc, &windowExt);
    FUNC5(windowExt.cx == cx && windowExt.cy == cy,
       "Window extension: Expected %dx%d, got %dx%d\n",
       cx, cy, windowExt.cx, windowExt.cy);

    FUNC0(hdc, &viewportExt);
    FUNC5(FUNC6(viewportExt.cx, expected_vp_cx) && FUNC6(viewportExt.cy, expected_vp_cy),
        "Viewport extents have not been properly adjusted: Expected %dx%d, got %dx%d\n",
        expected_vp_cx, expected_vp_cy, viewportExt.cx, viewportExt.cy);

    FUNC3(hdc, &windowOrgAfter);
    FUNC5(windowOrg.x == windowOrgAfter.x && windowOrg.y == windowOrgAfter.y,
        "Window origin changed from (%d,%d) to (%d,%d)\n",
        windowOrg.x, windowOrg.y, windowOrgAfter.x, windowOrgAfter.y);

    FUNC1(hdc, &viewportOrgAfter);
    FUNC5(viewportOrg.x == viewportOrgAfter.x && viewportOrg.y == viewportOrgAfter.y,
        "Viewport origin changed from (%d,%d) to (%d,%d)\n",
        viewportOrg.x, viewportOrg.y, viewportOrgAfter.x, viewportOrgAfter.y);
}