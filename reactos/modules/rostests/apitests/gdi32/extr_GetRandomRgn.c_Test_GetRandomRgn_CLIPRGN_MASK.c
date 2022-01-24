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
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ghdcWindow ; 
 int /*<<< orphan*/  ghwnd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11()
{
    HDC hdc;
    HRGN hrgn1, hrgn2;
    INT ret;
    RECT rect;

    hrgn1 = FUNC1(11, 17, 23, 42);
    if (!hrgn1)
    {
        FUNC10("Coun't create a region\n");
        return;
    }

    hdc = FUNC0(0);
    if (!hdc)
    {
        FUNC10("Coun't create a dc\n");
        return;
    }

    ret = FUNC4(hdc, hrgn1, CLIPRGN);
    FUNC8(ret, 0);
    FUNC5(hrgn1, &rect);
    FUNC9(rect.left, 11);
    FUNC9(rect.top, 17);
    FUNC9(rect.right, 23);
    FUNC9(rect.bottom, 42);

    hrgn2 = FUNC1(1, 2, 3, 4);
    FUNC7(hdc, hrgn2);
    FUNC3(hrgn2);
    ret = FUNC4(hdc, hrgn1, CLIPRGN);
    FUNC8(ret, 1);
    FUNC5(hrgn1, &rect);
    FUNC9(rect.left, 1);
    FUNC9(rect.top, 2);
    FUNC9(rect.right, 3);
    FUNC9(rect.bottom, 4);

    hrgn2 = FUNC1(2, 3, 4, 5);
    FUNC7(ghdcWindow, hrgn2);
    FUNC3(hrgn2);
    ret = FUNC4(ghdcWindow, hrgn1, CLIPRGN);
    FUNC8(ret, 1);
    FUNC5(hrgn1, &rect);
    FUNC9(rect.left, 2);
    FUNC9(rect.top, 3);
    FUNC9(rect.right, 4);
    FUNC9(rect.bottom, 5);

    FUNC6(ghwnd, 200, 400, 100, 100, 0);

    ret = FUNC4(ghdcWindow, hrgn1, CLIPRGN);
    FUNC8(ret, 1);
    FUNC5(hrgn1, &rect);
    FUNC9(rect.left, 2);
    FUNC9(rect.top, 3);
    FUNC9(rect.right, 4);
    FUNC9(rect.bottom, 5);


    FUNC3(hrgn1);
    FUNC2(hdc);
}