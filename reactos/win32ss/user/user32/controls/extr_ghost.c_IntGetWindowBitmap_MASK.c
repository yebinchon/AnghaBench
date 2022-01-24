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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int CAPTUREBLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SRCCOPY ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HBITMAP
FUNC7(HWND hwnd, INT cx, INT cy)
{
    HBITMAP hbm = NULL;
    HDC hdc, hdcMem;
    HGDIOBJ hbmOld;

    hdc = FUNC3(hwnd);
    if (!hdc)
        return NULL;

    hdcMem = FUNC1(hdc);
    if (!hdcMem)
        goto earth;

    hbm = FUNC4(cx, cy);
    if (hbm)
    {
        hbmOld = FUNC6(hdcMem, hbm);
        FUNC0(hdcMem, 0, 0, cx, cy, hdc, 0, 0, SRCCOPY | CAPTUREBLT);
        FUNC6(hdcMem, hbmOld);
    }

    FUNC2(hdcMem);

earth:
    FUNC5(hwnd, hdc);

    return hbm;
}