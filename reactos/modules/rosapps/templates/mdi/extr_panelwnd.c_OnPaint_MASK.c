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
struct TYPE_4__ {int /*<<< orphan*/  hdc; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PAINTSTRUCT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  ChildWnd ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(HWND hWnd, ChildWnd* pChildWnd)
{
    PAINTSTRUCT ps;
    RECT rt;
    FUNC3(hWnd, &rt);
    FUNC0(hWnd, &ps);

//    lastBrush = SelectObject(ps.hdc, (HBRUSH)GetStockObject(WHITE_BRUSH));
//    Rectangle(ps.hdc, rt.left, rt.top-1, rt.right, rt.bottom+1);
//    SelectObject(ps.hdc, lastBrush);
//    rt.top = rt.bottom - GetSystemMetrics(SM_CYHSCROLL);
    FUNC2(ps.hdc, &rt, FUNC4(BLACK_BRUSH));
/*
    rt.left = pChildWnd->nSplitPos-SPLIT_WIDTH/2;
    rt.right = pChildWnd->nSplitPos+SPLIT_WIDTH/2+1;
    lastBrush = SelectBrush(ps.hdc, (HBRUSH)GetStockObject(COLOR_SPLITBAR));
    Rectangle(ps.hdc, rt.left, rt.top-1, rt.right, rt.bottom+1);
    SelectObject(ps.hdc, lastBrush);
#ifdef _NO_EXTENSIONS
    rt.top = rt.bottom - GetSystemMetrics(SM_CYHSCROLL);
    FillRect(ps.hdc, &rt, GetStockObject(BLACK_BRUSH));
#endif
 */
    FUNC1(hWnd, &ps);
}