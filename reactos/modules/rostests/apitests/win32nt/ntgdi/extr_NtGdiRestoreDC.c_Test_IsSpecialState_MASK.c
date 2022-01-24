#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int x; int y; } ;
struct TYPE_7__ {int cx; int cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DC_BRUSH ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  DEFAULT_BITMAP ; 
 int /*<<< orphan*/  DEFAULT_GUI_FONT ; 
 scalar_t__ GM_ADVANCED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ MM_ANISOTROPIC ; 
 scalar_t__ FUNC9 (int,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ hbitmap ; 
 scalar_t__ hbrush ; 
 scalar_t__ hfont ; 
 scalar_t__ hpen ; 
 int /*<<< orphan*/  hrgn2 ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 

__attribute__((used)) static
void
FUNC13(HDC hdc, BOOL bMemDC)
{
    POINT pt;
    SIZE sz;

    /* Test Objects */
    FUNC11(FUNC10(hdc, FUNC4(DC_BRUSH)) == hbrush);
    FUNC11(FUNC10(hdc, FUNC4(DC_PEN)) == hpen);
    FUNC11(FUNC10(hdc, FUNC4(DEFAULT_GUI_FONT)) == hfont);
    if (bMemDC)
    {
        FUNC11(FUNC10(hdc, FUNC4(DEFAULT_BITMAP)) == hbitmap);
        FUNC11(FUNC10(hdc, hrgn2) == (PVOID)1);
    }
    else
    {
        FUNC11(FUNC10(hdc, FUNC4(DEFAULT_BITMAP)) == 0);
        FUNC11(FUNC10(hdc, hrgn2) == (PVOID)2);
    }

    /* Test colors */
    FUNC11(FUNC0(hdc) == FUNC9(12,34,56));
    FUNC11(FUNC1(hdc) == FUNC9(23,34,45));

    /* Test coordinates */
    FUNC11(FUNC3(hdc) == MM_ANISOTROPIC);
    FUNC11(FUNC2(hdc) == GM_ADVANCED);
    FUNC8(hdc, &pt);
    FUNC11(pt.x == 12);
    FUNC11(pt.y == 34);
    FUNC6(hdc, &pt);
    FUNC11(pt.x == 56);
    FUNC11(pt.y == 78);
    FUNC7(hdc, &sz);
    FUNC12(sz.cx == 123, "sz.cx == %ld\n", sz.cx);
    FUNC12(sz.cy == 456, "sz.cy == %ld\n", sz.cy);
    FUNC5(hdc, &sz);
    FUNC11(sz.cx == 234);
    FUNC11(sz.cy == 567);


}