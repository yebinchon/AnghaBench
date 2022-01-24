#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cx; int cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  HORZSIZE ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  MM_LOMETRIC ; 
 int /*<<< orphan*/  MM_TEXT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    HDC hdc = FUNC0("DISPLAY", NULL, NULL, NULL);
    BOOL r;
    INT horz_res = FUNC2(hdc, HORZRES);
    INT horz_size = FUNC2(hdc, HORZSIZE);
    INT log_pixels_x = FUNC2(hdc, LOGPIXELSX);
    SIZE orig_lometric_vp, orig_lometric_wnd;

    if(!&pSetVirtualResolution)
    {
        FUNC11("Don't have SetVirtualResolution\n");
        return;
    }

    /* Get the true resolution limits */
    FUNC5(hdc, MM_LOMETRIC);
    FUNC3(hdc, &orig_lometric_vp);
    FUNC4(hdc, &orig_lometric_wnd);
    FUNC5(hdc, MM_TEXT);

    r = FUNC10(hdc, 4000, 1000, 400, 200); /* 10 pix/mm x 5 pix/mm */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC6(hdc, 1000, 1000);
    FUNC7(hdc, 1, 1);
    FUNC8(hdc, 1, 1);

    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 1000, -500);
    FUNC7(hdc, 4000, -1000);
    FUNC8(hdc, 4000, 2000);

    /* Doesn't change the device caps */
    FUNC9(horz_res == FUNC2(hdc, HORZRES), "horz_res changed\n");
    FUNC9(horz_size == FUNC2(hdc, HORZSIZE), "horz_size changed\n");
    FUNC9(log_pixels_x == FUNC2(hdc, LOGPIXELSX), "log_pixels_x changed\n");

    r = FUNC10(hdc, 8000, 1000, 400, 200); /* 20 pix/mm x 5 pix/mm */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC6(hdc, 1000, -500); /* No change, need to re-set the mapping mode */
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 2000, -500);
    FUNC7(hdc, 8000, -1000);
    FUNC8(hdc, 4000, 2000);

    r = FUNC10(hdc, 8000, 1000, 200, 200); /* 40 pix/mm x 5 pix/mm */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 4000, -500);
    FUNC7(hdc, 8000, -1000);
    FUNC8(hdc, 2000, 2000);

    r = FUNC10(hdc, 8000, 1000, 200, 200); /* 40 pix/mm x 5 pix/mm */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 4000, -500);
    FUNC7(hdc, 8000, -1000);
    FUNC8(hdc, 2000, 2000);

    r = FUNC10(hdc, 8000, 2000, 200, 200); /* 40 pix/mm x 10 pix/mm */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 4000, -1000);
    FUNC7(hdc, 8000, -2000);
    FUNC8(hdc, 2000, 2000);

    r = FUNC10(hdc, 0, 0, 10, 0); /* Error */
    FUNC9(r == FALSE, "got %d\n", r);
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC6(hdc, 4000, -1000);
    FUNC7(hdc, 8000, -2000);
    FUNC8(hdc, 2000, 2000);

    r = FUNC10(hdc, 0, 0, 0, 0); /* Reset to true resolution */
    FUNC9(r == TRUE, "got %d\n", r);
    FUNC5(hdc, MM_TEXT);
    FUNC5(hdc, MM_LOMETRIC);
    FUNC7(hdc, orig_lometric_vp.cx, orig_lometric_vp.cy);
    FUNC8(hdc, orig_lometric_wnd.cx, orig_lometric_wnd.cy);

    FUNC1(hdc);
}