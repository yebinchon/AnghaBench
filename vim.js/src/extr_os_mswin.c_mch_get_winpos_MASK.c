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
struct TYPE_3__ {int left; int top; } ;
typedef  TYPE_1__ RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int OK ; 
 int /*<<< orphan*/  s_hwnd ; 

int
FUNC2(int *x, int *y)
{
    RECT  rect;

    FUNC0();
    FUNC1(s_hwnd, &rect);
    *x = rect.left;
    *y = rect.top;
    return OK;
}