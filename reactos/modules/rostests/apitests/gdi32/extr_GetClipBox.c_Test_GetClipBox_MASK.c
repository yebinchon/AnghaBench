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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int COMPLEXREGION ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int NULLREGION ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC18()
{
    HWND hWnd;
    HDC hdc;
    RECT rect;
    HRGN hrgn, hrgn2;
    int ret;

    /* Create a window */
    hWnd = FUNC2(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                        CW_USEDEFAULT, CW_USEDEFAULT, 100, 100,
                        NULL, NULL, 0, 0);
    FUNC15(hWnd != NULL, "CreateWindowW failed\n");
    if (hWnd == NULL)
    {
        return;
    }

    hdc = FUNC6(hWnd);

    /* Test invalid DC */
    FUNC10(ERROR_SUCCESS);
    ret = FUNC5((HDC)0x12345, &rect);
    FUNC15(ret == ERROR, "Expected ERROR, got %d\n", ret);
    FUNC15((FUNC7() == 0) || (FUNC7() == ERROR_INVALID_HANDLE), "Expected 0, got %ld\n", FUNC7());

    //ret = GetClipBox(hdc, &rect);
    //ok_int(ret, SIMPLEREGION);
    //ok_rect(&rect, 0, 0, 132, 68);

    /* Create a clip region */
    hrgn = FUNC1(5, 7, 50, 50);
    FUNC9(hdc, hrgn);
    FUNC3(hrgn);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 5, 7, 50, 50);

    /* Set clip region as meta region */
    FUNC12(hdc);

    /* Create a new clip region */
    hrgn = FUNC1(10, 10, 100, 100);
    FUNC9(hdc, hrgn);
    FUNC3(hrgn);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 10, 10, 50, 50);

    /* Create an empty clip region */
    hrgn = FUNC1(10, 10, 10, 30);
    FUNC9(hdc, hrgn);
    FUNC3(hrgn);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, NULLREGION);
    FUNC17(&rect, 0, 0, 0, 0);

    /* Create a complex region */
    hrgn = FUNC1(10, 10, 30, 30);
    hrgn2 = FUNC1(20, 20, 60, 60);
    FUNC16(FUNC0(hrgn, hrgn, hrgn2, RGN_OR), COMPLEXREGION);
    FUNC9(hdc, hrgn);
    FUNC3(hrgn2);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, COMPLEXREGION);
    FUNC17(&rect, 10, 10, 50, 50);

    /* Set scaling but keep the mapping mode (viewport should not be changed) */
    FUNC16(FUNC13(hdc, 1000, 1000, NULL), 1);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, COMPLEXREGION);
    FUNC17(&rect, 10, 10, 50, 50);

    /* Set unisotropic mode, ClipBox should be unchanged */
    FUNC16(FUNC11(hdc, MM_ANISOTROPIC), 1);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, COMPLEXREGION);
    FUNC17(&rect, 10, 10, 50, 50);

    /* Now set viewport again */
    FUNC16(FUNC13(hdc, 200, 400, NULL), 1);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, COMPLEXREGION); // obviously some special secret feature...
    FUNC17(&rect, 0, 0, 0, 0);

    /* Reset clip region */
    FUNC9(hdc, NULL);
    FUNC12(hdc);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 0, 0, 0, 0);

    hrgn = FUNC1(10, 10, 190, 190);
    FUNC9(hdc, hrgn);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 0, 0, 0, 0);

    /* Now also set the window extension */
    FUNC16(FUNC14(hdc, 400, 600, NULL), 1);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 20, 15, 100, 75);

    hrgn = FUNC1(30, 30, 300, 300);
    FUNC9(hdc, hrgn);
    FUNC12(hdc);
    ret = FUNC5(hdc, &rect);
    FUNC16(ret, SIMPLEREGION);
    FUNC17(&rect, 60, 45, 100, 75);

    FUNC8(hWnd, hdc);
    FUNC4(hWnd);
}