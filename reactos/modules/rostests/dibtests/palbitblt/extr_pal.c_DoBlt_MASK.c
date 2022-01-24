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
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(HBITMAP hBM)
{
	HDC hDC,Context;
	HWND ActiveWindow;
	RECT dest;
	HBITMAP dflBmp;

	if((ActiveWindow = FUNC4()) == NULL)
		return;

	hDC = FUNC6(ActiveWindow);
	FUNC5(ActiveWindow,&dest);

	Context = FUNC1(0);
	dflBmp = FUNC8(Context, hBM);
	FUNC0(hDC, 0, 0, dest.right, dest.bottom, Context, 0, 0, SRCCOPY);
	FUNC8(Context, dflBmp);
	FUNC2(Context);
	FUNC3(dflBmp);
	FUNC7(ActiveWindow, hDC);
}