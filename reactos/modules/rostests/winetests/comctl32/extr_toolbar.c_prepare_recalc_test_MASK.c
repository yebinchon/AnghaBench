#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int TBSTYLE_FLAT ; 
 int /*<<< orphan*/  TB_GETITEMRECT ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(HWND *phToolbar)
{
    RECT rect;
    FUNC4(phToolbar);
    FUNC2(*phToolbar, GWL_STYLE,
        FUNC0(*phToolbar, GWL_STYLE) | TBSTYLE_FLAT);
    FUNC1(*phToolbar, TB_GETITEMRECT, 1, (LPARAM)&rect);
    FUNC3(rect.top == 2, "Test will make no sense because initial top is %d instead of 2\n",
        rect.top);
}