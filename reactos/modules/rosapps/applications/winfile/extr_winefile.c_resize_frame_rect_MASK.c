#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hmdiclient; int /*<<< orphan*/  hstatusbar; int /*<<< orphan*/  hdrivebar; int /*<<< orphan*/  htoolbar; } ;
struct TYPE_7__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_6__ {int bottom; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* PRECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_4__ Globals ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_SETPARTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SIZE ; 

__attribute__((used)) static void FUNC4(HWND hwnd, PRECT prect)
{
	int new_top;
	RECT rt;

	if (FUNC1(Globals.htoolbar)) {
		FUNC3(Globals.htoolbar, WM_SIZE, 0, 0);
		FUNC0(Globals.htoolbar, &rt);
		prect->top = rt.bottom+3;
		prect->bottom -= rt.bottom+3;
	}

	if (FUNC1(Globals.hdrivebar)) {
		FUNC3(Globals.hdrivebar, WM_SIZE, 0, 0);
		FUNC0(Globals.hdrivebar, &rt);
		new_top = --prect->top + rt.bottom+3;
		FUNC2(Globals.hdrivebar, 0, prect->top, rt.right, new_top, TRUE);
		prect->top = new_top;
		prect->bottom -= rt.bottom+2;
	}

	if (FUNC1(Globals.hstatusbar)) {
		int parts[] = {300, 500};

		FUNC3(Globals.hstatusbar, WM_SIZE, 0, 0);
		FUNC3(Globals.hstatusbar, SB_SETPARTS, 2, (LPARAM)&parts);
		FUNC0(Globals.hstatusbar, &rt);
		prect->bottom -= rt.bottom;
	}

	FUNC2(Globals.hmdiclient, prect->left-1,prect->top-1,prect->right+2,prect->bottom+1, TRUE);
}