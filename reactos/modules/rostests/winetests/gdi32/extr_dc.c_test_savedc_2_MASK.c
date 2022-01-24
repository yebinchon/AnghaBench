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
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HRGN ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int COMPLEXREGION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int NULLREGION ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(void)
{
    HWND hwnd;
    HDC hdc;
    HRGN hrgn;
    RECT rc, rc_clip;
    int ret;

    hwnd = FUNC1(0, "static", "", WS_POPUP, 0,0,100,100,
                           0, 0, 0, NULL);
    FUNC16(hwnd != 0);
    FUNC14(hwnd, SW_SHOW);
    FUNC15(hwnd);

    hrgn = FUNC0(0, 0, 0, 0);
    FUNC16(hrgn != 0);

    hdc = FUNC7(hwnd);
    FUNC19(hdc != NULL, "GetDC failed\n");

    ret = FUNC5(hdc, &rc_clip);
    FUNC19(ret == SIMPLEREGION || FUNC17(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    ret = FUNC6(hdc, hrgn);
    FUNC19(ret == 0, "GetClipRgn returned %d instead of 0\n", ret);
    ret = FUNC8(hrgn, &rc);
    FUNC19(ret == NULLREGION, "GetRgnBox returned %d %s instead of NULLREGION\n",
       ret, FUNC21(&rc));
    /*dump_region(hrgn);*/
    FUNC13(&rc, 0, 0, 100, 100);
    FUNC19(FUNC4(&rc, &rc_clip), "rects are not equal: %s - %s\n", FUNC21(&rc),
       FUNC21(&rc_clip));

    ret = FUNC12(hdc);
    FUNC19(ret == 1, "ret = %d\n", ret);

    ret = FUNC9(hdc, 0, 0, 50, 50);
    if (ret == COMPLEXREGION)
    {
        /* XP returns COMPLEXREGION although dump_region reports only 1 rect */
        FUNC20("Windows BUG: IntersectClipRect returned %d instead of SIMPLEREGION\n", ret);
        /* let's make sure that it's a simple region */
        ret = FUNC6(hdc, hrgn);
        FUNC19(ret == 1, "GetClipRgn returned %d instead of 1\n", ret);
        FUNC18(hrgn);
    }
    else
        FUNC19(ret == SIMPLEREGION, "IntersectClipRect returned %d instead of SIMPLEREGION\n", ret);

    ret = FUNC5(hdc, &rc_clip);
    FUNC19(ret == SIMPLEREGION || FUNC17(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    FUNC13(&rc, 0, 0, 50, 50);
    FUNC19(FUNC4(&rc, &rc_clip), "rects are not equal: %s - %s\n", FUNC21(&rc),
       FUNC21(&rc_clip));

    ret = FUNC11(hdc, 1);
    FUNC19(ret, "ret = %d\n", ret);

    ret = FUNC5(hdc, &rc_clip);
    FUNC19(ret == SIMPLEREGION || FUNC17(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    FUNC13(&rc, 0, 0, 100, 100);
    FUNC19(FUNC4(&rc, &rc_clip), "rects are not equal: %s - %s\n", FUNC21(&rc),
       FUNC21(&rc_clip));

    FUNC2(hrgn);
    FUNC10(hwnd, hdc);
    FUNC3(hwnd);
}