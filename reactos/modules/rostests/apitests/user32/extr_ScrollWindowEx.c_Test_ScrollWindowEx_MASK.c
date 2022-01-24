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
typedef  int /*<<< orphan*/ * LPRECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HRGN ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NULLREGION ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  SW_INVALIDATE ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

void FUNC8()
{
	HWND hWnd;
	HRGN hrgn;
	int Result;

	/* Create a window */
	hWnd = FUNC1(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
	                    CW_USEDEFAULT, CW_USEDEFAULT, 100, 100,
	                    NULL, NULL, 0, 0);
	FUNC6(hWnd);

	/* Assert that no update region is there */
	hrgn = FUNC0(0,0,0,0);
	Result = FUNC4(hWnd, hrgn, FALSE);
	FUNC7(Result == NULLREGION, "Result = %d\n", Result);

	Result = FUNC5(hWnd, 20, 0, NULL, NULL, NULL, NULL, 0);
	FUNC7(Result == SIMPLEREGION, "Result = %d\n", Result);
	Result = FUNC4(hWnd, hrgn, FALSE);
	FUNC7(Result == NULLREGION, "Result = %d\n", Result);

	Result = FUNC5(hWnd, 20, 0, NULL, NULL, NULL, NULL, SW_INVALIDATE);
	FUNC7(Result == SIMPLEREGION, "Result = %d\n", Result);
	Result = FUNC4(hWnd, hrgn, FALSE);
	FUNC7(Result == SIMPLEREGION, "Result = %d\n", Result);
	FUNC6(hWnd);

	// test invalid update region
	FUNC2(hrgn);
	Result = FUNC5(hWnd, 20, 0, NULL, NULL, hrgn, NULL, SW_INVALIDATE);
	FUNC7(Result == ERROR, "Result = %d\n", Result);
	hrgn = FUNC0(0,0,0,0);
	FUNC6(hWnd);

	// Test invalid updaterect pointer
	Result = FUNC5(hWnd, 20, 0, NULL, NULL, NULL, (LPRECT)1, SW_INVALIDATE);
	FUNC7(Result == ERROR, "Result = %d\n", Result);
	Result = FUNC4(hWnd, hrgn, FALSE);
	FUNC7(Result == SIMPLEREGION, "Result = %d\n", Result);

// test for alignment of rects

	FUNC2(hrgn);
    FUNC3(hWnd);
}