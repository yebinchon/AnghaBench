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
typedef  int WPARAM ;
struct TYPE_3__ {scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICA ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCX_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LBS_OWNERDRAWVARIABLE ; 
 int /*<<< orphan*/  LB_GETITEMHEIGHT ; 
 int /*<<< orphan*/  OBJ_FONT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_LISTBOXA ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    INT itemHeight;
    TEXTMETRICA tm;
    HFONT font;
    HWND hLB;
    HDC hdc;

    hLB = FUNC7 (0, 0);
    FUNC8 ((hdc = FUNC3( hLB, 0, DCX_CACHE )) != 0, "Can't get hdc\n");
    FUNC8 ((font = FUNC2(hdc, OBJ_FONT)) != 0, "Can't get the current font\n");
    FUNC8 (FUNC4( hdc, &tm ), "Can't read font metrics\n");
    FUNC5( hLB, hdc);

    FUNC8 (FUNC6(hLB, WM_SETFONT, (WPARAM)font, 0) == 0, "Can't set font\n");

    itemHeight = FUNC6(hLB, LB_GETITEMHEIGHT, 0, 0);
    FUNC8 (itemHeight == tm.tmHeight, "Item height wrong, got %d, expecting %d\n", itemHeight, tm.tmHeight);

    FUNC1 (hLB);

    hLB = FUNC0(WC_LISTBOXA, "TestList", LBS_OWNERDRAWVARIABLE,  0, 0, 100, 100, NULL, NULL, NULL, 0);

    itemHeight = FUNC6(hLB, LB_GETITEMHEIGHT, 0, 0);
    FUNC8(itemHeight > 0 && itemHeight <= tm.tmHeight, "Unexpected item height %d, expected %d.\n",
        itemHeight, tm.tmHeight);
    itemHeight = FUNC6(hLB, LB_GETITEMHEIGHT, 5, 0);
    FUNC8(itemHeight > 0 && itemHeight <= tm.tmHeight, "Unexpected item height %d, expected %d.\n",
        itemHeight, tm.tmHeight);
    itemHeight = FUNC6(hLB, LB_GETITEMHEIGHT, -5, 0);
    FUNC8(itemHeight > 0 && itemHeight <= tm.tmHeight, "Unexpected item height %d, expected %d.\n",
        itemHeight, tm.tmHeight);

    FUNC1 (hLB);
}