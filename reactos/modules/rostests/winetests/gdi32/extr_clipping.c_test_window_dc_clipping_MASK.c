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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int COMPLEXREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  RGN_DIFF ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  SM_CMONITORS ; 
 int /*<<< orphan*/  SM_CXSCREEN ; 
 int /*<<< orphan*/  SM_CXVIRTUALSCREEN ; 
 int /*<<< orphan*/  SM_CYSCREEN ; 
 int /*<<< orphan*/  SM_CYVIRTUALSCREEN ; 
 int /*<<< orphan*/  SM_XVIRTUALSCREEN ; 
 int /*<<< orphan*/  SM_YVIRTUALSCREEN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  WS_POPUP ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(void)
{
    HDC hdc;
    HRGN hrgn, hrgn_empty;
    HWND hwnd;
    RECT rc, virtual_rect;
    int ret, screen_width, screen_height;

    /* Windows versions earlier than Win2k do not support the virtual screen metrics,
     * so we fall back to the primary screen metrics. */
    screen_width = FUNC9(SM_CXVIRTUALSCREEN);
    if(!screen_width) screen_width = FUNC9(SM_CXSCREEN);
    screen_height = FUNC9(SM_CYVIRTUALSCREEN);
    if(!screen_height) screen_height = FUNC9(SM_CYSCREEN);
    FUNC12(&virtual_rect, FUNC9(SM_XVIRTUALSCREEN), FUNC9(SM_YVIRTUALSCREEN),
            FUNC9(SM_XVIRTUALSCREEN) + screen_width, FUNC9(SM_YVIRTUALSCREEN) + screen_height);

    FUNC14("screen resolution %d x %d\n", screen_width, screen_height);

    hwnd = FUNC1(0, "static", NULL, WS_POPUP,
                           -100, -100, screen_width * 2, screen_height * 2, 0, 0, 0, NULL);
    hdc = FUNC10(0);
    hrgn_empty = FUNC0(0, 0, 0, 0);
    hrgn = FUNC0(0, 0, 0, 0);

    ret = FUNC7(hdc, hrgn);
    FUNC13(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC6(hdc, 0, RGN_DIFF);
    FUNC13(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC7(hdc, hrgn);
    FUNC13(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC6(hdc, hrgn_empty, RGN_DIFF);
    FUNC13(ret == SIMPLEREGION || (ret == COMPLEXREGION && FUNC9(SM_CMONITORS) > 1),
       "expected SIMPLEREGION, got %d\n", ret);

    ret = FUNC7(hdc, hrgn);
    FUNC13(ret == 1, "expected 1, got %d\n", ret);

    ret = FUNC8(hrgn, &rc);
    FUNC13(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    FUNC13(FUNC5(&rc, &virtual_rect), "expected %s, got %s\n", FUNC15(&virtual_rect),
       FUNC15(&rc));

    FUNC12( &rc, 10, 10, 20, 20 );
    ret = FUNC11( hdc, &rc );
    FUNC13( ret, "RectVisible failed for %s\n", FUNC15(&rc));

    FUNC12( &rc, 20, 20, 10, 10 );
    ret = FUNC11( hdc, &rc );
    FUNC13( ret, "RectVisible failed for %s\n", FUNC15(&rc));

    ret = FUNC6(hdc, 0, RGN_DIFF);
    FUNC13(ret == 0, "expected 0, got %d\n", ret);

    ret = FUNC7(hdc, hrgn);
    FUNC13(ret == 1, "expected 1, got %d\n", ret);

    ret = FUNC8(hrgn, &rc);
    FUNC13(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    FUNC13(FUNC5(&rc, &virtual_rect), "expected %s, got %s\n", FUNC15(&virtual_rect),
       FUNC15(&rc));

    ret = FUNC6(hdc, 0, RGN_COPY);
    FUNC13(ret == SIMPLEREGION || (ret == COMPLEXREGION && FUNC9(SM_CMONITORS) > 1),
       "expected SIMPLEREGION, got %d\n", ret);

    ret = FUNC7(hdc, hrgn);
    FUNC13(ret == 0, "expected 0, got %d\n", ret);

    FUNC2(hdc);
    FUNC3(hrgn);
    FUNC3(hrgn_empty);
    FUNC4(hwnd);
}