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
struct TYPE_3__ {int left; int right; int bottom; scalar_t__ top; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/ * PRECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int NULLREGION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

void FUNC10()
{
	HWND hWnd, hWnd2;
	HDC hDC;
	HRGN hrgn;
	RECT rcClip;
	int iResult;

	/* Create a window */
	hWnd = FUNC1(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
	                    100, 100, 100, 100,
	                    NULL, NULL, 0, 0);
	FUNC8(hWnd);
	hDC = FUNC4(hWnd);

	/* Test that no update region is there */
	hrgn = FUNC0(0,0,0,0);
	iResult = FUNC5(hWnd, hrgn, FALSE);
	FUNC9 (iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);

    /* Test normal scrolling */
	FUNC9(FUNC7(hDC, 0, 0, NULL, NULL, hrgn, NULL) == TRUE, "ScrollDC failed\n");

    /* Scroll with invalid update region */
	FUNC2(hrgn);
	FUNC9(FUNC7(hDC, 50, 0, NULL, NULL, (HRGN)0x12345678, NULL) == FALSE, "ScrollDC successed\n");
	FUNC9(FUNC7(hDC, 50, 0, NULL, NULL, hrgn, NULL) == FALSE, "ScrollDC successed\n");
	hrgn = FUNC0(0,0,0,0);
	iResult = FUNC5(hWnd, hrgn, FALSE);
	FUNC9(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);

    /* Scroll with invalid update rect pointer */
	FUNC9(FUNC7(hDC, 50, 0, NULL, NULL, NULL, (PRECT)1) == FALSE, "ScrollDC failed\n");
	iResult = FUNC5(hWnd, hrgn, FALSE);
	FUNC9(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);

    /* Scroll with a clip rect */
    rcClip.left = 50; rcClip.top = 0; rcClip.right = 100; rcClip.bottom = 100;
	FUNC9(FUNC7(hDC, 50, 0, NULL, &rcClip, hrgn, NULL) == TRUE, "ScrollDC failed\n");
	iResult = FUNC5(hWnd, hrgn, FALSE);
	FUNC9(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);

    /* Scroll with a clip rect */
    rcClip.left = 50; rcClip.top = 0; rcClip.right = 100; rcClip.bottom = 100;
	FUNC9(FUNC7(hDC, 50, 50, NULL, &rcClip, hrgn, NULL) == TRUE, "ScrollDC failed\n");
	iResult = FUNC5(hWnd, hrgn, FALSE);
	FUNC9(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);

	/* Overlap with another window */
	hWnd2 = FUNC1(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
	                    30, 160, 100, 100,
	                    NULL, NULL, 0, 0);
	FUNC8(hWnd2);

    /* Cleanup */
	FUNC6(hWnd, hDC);
    FUNC3(hWnd);
    FUNC3(hWnd2);

}