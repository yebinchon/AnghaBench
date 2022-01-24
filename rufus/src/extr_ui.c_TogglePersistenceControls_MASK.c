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
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SIZE ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SLIDER ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_UNITS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WS_EX_RIGHT ; 
 scalar_t__ bsw ; 
 scalar_t__ fw ; 
 int /*<<< orphan*/  hMainDialog ; 
 scalar_t__ mw ; 
 scalar_t__ ssw ; 

void FUNC8(BOOL display)
{
	RECT rc;
	HWND hSize, hUnits;
	LONG_PTR style;
	LONG width = fw - bsw - ssw;
	hSize = FUNC1(hMainDialog, IDC_PERSISTENCE_SIZE);
	hUnits = FUNC1(hMainDialog, IDC_PERSISTENCE_UNITS);

	style = FUNC2(hSize, GWL_EXSTYLE);
	if (display)
		style |= WS_EX_RIGHT;
	else
		style &= ~WS_EX_RIGHT;
	FUNC5(hSize, GWL_EXSTYLE, style);

	if (display) {
		FUNC3(hUnits, &rc);
		FUNC4(NULL, hMainDialog, (POINT*)&rc, 2);
		width -= (rc.right - rc.left) + ssw;
	}

	FUNC3(hSize, &rc);
	FUNC4(NULL, hMainDialog, (POINT*)&rc, 2);
	FUNC6(hSize, FUNC1(hMainDialog, IDC_PERSISTENCE_SLIDER), mw + bsw + ssw, rc.top, width, rc.bottom - rc.top, 0);

	FUNC0(hSize, display ? TRUE : FALSE);
	FUNC0(hUnits, display ? TRUE : FALSE);
	FUNC7(hUnits, display ? SW_SHOW : SW_HIDE);
}