#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_10__ {TYPE_1__ rcNormalPosition; } ;
typedef  TYPE_2__ WINDOWPLACEMENT ;
struct TYPE_12__ {int /*<<< orphan*/  hstatusbar; int /*<<< orphan*/  hdrivebar; int /*<<< orphan*/  htoolbar; } ;
struct TYPE_11__ {int left; int top; int bottom; scalar_t__ right; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_3__* PRECT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_6__ Globals ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXEDGE ; 
 int /*<<< orphan*/  SM_CXSIZEFRAME ; 
 int /*<<< orphan*/  SM_CYCAPTION ; 
 int /*<<< orphan*/  SM_CYEDGE ; 
 int /*<<< orphan*/  SM_CYMENUSIZE ; 
 int /*<<< orphan*/  SM_CYSIZEFRAME ; 

__attribute__((used)) static void FUNC5(HWND hwnd, PRECT prect)
{
	RECT rt;

	if (!FUNC3(hwnd))
		FUNC0(hwnd, prect);
	else {
		WINDOWPLACEMENT wp;

		FUNC2(hwnd, &wp);

		prect->left = prect->top = 0;
		prect->right = wp.rcNormalPosition.right-wp.rcNormalPosition.left-
						2*(FUNC1(SM_CXSIZEFRAME)+FUNC1(SM_CXEDGE));
		prect->bottom = wp.rcNormalPosition.bottom-wp.rcNormalPosition.top-
						2*(FUNC1(SM_CYSIZEFRAME)+FUNC1(SM_CYEDGE))-
						FUNC1(SM_CYCAPTION)-FUNC1(SM_CYMENUSIZE);
	}

	if (FUNC4(Globals.htoolbar)) {
		FUNC0(Globals.htoolbar, &rt);
		prect->top += rt.bottom+2;
	}

	if (FUNC4(Globals.hdrivebar)) {
		FUNC0(Globals.hdrivebar, &rt);
		prect->top += rt.bottom+2;
	}

	if (FUNC4(Globals.hstatusbar)) {
		FUNC0(Globals.hstatusbar, &rt);
		prect->bottom -= rt.bottom;
	}
}