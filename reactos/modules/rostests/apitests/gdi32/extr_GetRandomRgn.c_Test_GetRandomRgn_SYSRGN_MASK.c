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
struct TYPE_3__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSRGN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ghdcWindow ; 
 int /*<<< orphan*/  ghwnd ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

void FUNC14()
{
    HDC hdc;
    HRGN hrgn1, hrgn2;
    INT ret;
    RECT rect, rect2;
    HBITMAP hbmp;

    hrgn1 = FUNC2(11, 17, 23, 42);
    if (!hrgn1)
    {
        FUNC13("Coun't create a region\n");
        return;
    }

    hdc = FUNC1(0);
    if (!hdc)
    {
        FUNC13("Coun't create a dc\n");
        return;
    }

    ret = FUNC6(hdc, hrgn1, SYSRGN);
    FUNC11(ret, 1);
    FUNC7(hrgn1, &rect);
    FUNC12(rect.left, 0);
    FUNC12(rect.top, 0);
    FUNC12(rect.right, 1);
    FUNC12(rect.bottom, 1);

    hrgn2 = FUNC2(1, 2, 3, 4);
    FUNC9(hdc, hrgn2);
    FUNC5(hrgn2);
    ret = FUNC6(hdc, hrgn1, SYSRGN);
    FUNC11(ret, 1);
    FUNC7(hrgn1, &rect);
    FUNC12(rect.left, 0);
    FUNC12(rect.top, 0);
    FUNC12(rect.right, 1);
    FUNC12(rect.bottom, 1);

    hbmp = FUNC0(hdc, 4, 7);
    FUNC10(hdc, hbmp);
    ret = FUNC6(hdc, hrgn1, SYSRGN);
    FUNC11(ret, 1);
    FUNC7(hrgn1, &rect);
    FUNC12(rect.left, 0);
    FUNC12(rect.top, 0);
    FUNC12(rect.right, 4);
    FUNC12(rect.bottom, 7);
    FUNC5(hbmp);

    FUNC8(ghwnd, 100, 100, 100, 100, 0);
    ret = FUNC6(ghdcWindow, hrgn1, SYSRGN);
    FUNC11(ret, 1);
    FUNC7(hrgn1, &rect);
    FUNC3(ghdcWindow, (LPPOINT)&rect, 2);
#if 0 // FIXME: this needs calculation
    ok_long(rect.left, 104);
    ok_long(rect.top, 124);
    ok_long(rect.right, 209);
    ok_long(rect.bottom, 196);
#endif

    FUNC8(ghwnd, 200, 400, 200, 200, 0);

    ret = FUNC6(ghdcWindow, hrgn1, SYSRGN);
    FUNC11(ret, 1);
    FUNC7(hrgn1, &rect2);
    FUNC3(ghdcWindow, (LPPOINT)&rect2, 2);
#if 0 // FIXME: this needs calculation
    ok_long(rect2.left, rect.left + 100);
    ok_long(rect2.top, rect.top + 300);
    ok_long(rect2.right, rect.right + 200 - 13);
    ok_long(rect2.bottom, rect.bottom + 400);
#endif

    FUNC5(hrgn1);
    FUNC4(hdc);

}