#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; scalar_t__ bottom; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SYSRGN ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int WS_POPUP ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC19(void)
{
    HWND hwnd = FUNC1(0,"BUTTON","test",WS_VISIBLE|WS_POPUP,0,0,100,100,FUNC6(),0,0,0);
    HDC hdc;
    HRGN hrgn = FUNC0(0, 0, 0, 0);
    int ret;
    RECT rc, rc2;
    RECT ret_rc, window_rc;

    FUNC17( hwnd != 0, "CreateWindow failed\n" );

    FUNC15(&window_rc, 400, 300, 500, 400);
    FUNC16(hwnd, HWND_TOPMOST, window_rc.left, window_rc.top,
                 window_rc.right - window_rc.left, window_rc.bottom - window_rc.top, 0 );
    hdc = FUNC5(hwnd);

    ret = FUNC7(hdc, hrgn, 1);
    FUNC17(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = FUNC7(hdc, hrgn, 2);
    FUNC17(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = FUNC7(hdc, hrgn, 3);
    FUNC17(ret == 0, "GetRandomRgn rets %d\n", ret);

    /* Set a clip region */
    FUNC15(&rc, 20, 20, 80, 80);
    FUNC10(hdc, rc.left, rc.top, rc.right, rc.bottom);

    ret = FUNC7(hdc, hrgn, 1);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));
 
    ret = FUNC7(hdc, hrgn, 2);
    FUNC17(ret == 0, "GetRandomRgn rets %d\n", ret);

    ret = FUNC7(hdc, hrgn, 3);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));

    /* Move the clip to the meta and clear the clip */
    FUNC14(hdc);

    ret = FUNC7(hdc, hrgn, 1);
    FUNC17(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = FUNC7(hdc, hrgn, 2);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));

    ret = FUNC7(hdc, hrgn, 3);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));

    /* Set a new clip (still got the meta) */
    FUNC15(&rc2, 10, 30, 70, 90);
    FUNC10(hdc, rc2.left, rc2.top, rc2.right, rc2.bottom);

    ret = FUNC7(hdc, hrgn, 1);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc2, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));

    ret = FUNC7(hdc, hrgn, 2);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));
 
    FUNC11(&rc2, &rc, &rc2);

    ret = FUNC7(hdc, hrgn, 3);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    FUNC17(FUNC4(&rc2, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));


    ret = FUNC7(hdc, hrgn, SYSRGN);
    FUNC17(ret != 0, "GetRandomRgn rets %d\n", ret);
    FUNC8(hrgn, &ret_rc);
    if(FUNC9() & 0x80000000)
        FUNC12(&window_rc, -window_rc.left, -window_rc.top);
    /* the window may be partially obscured so the region may be smaller */
    FUNC11( &window_rc, &ret_rc, &ret_rc );
    FUNC17(FUNC4(&window_rc, &ret_rc), "GetRandomRgn %s\n", FUNC18(&ret_rc));

    FUNC2(hrgn);
    FUNC13(hwnd, hdc);
    FUNC3(hwnd);
}