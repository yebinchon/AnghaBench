#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guicolor_T ;
struct TYPE_5__ {scalar_t__ char_height; scalar_t__ char_width; int /*<<< orphan*/  col; int /*<<< orphan*/  row; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ right; scalar_t__ left; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_hdc ; 

void
FUNC6(guicolor_T color)
{
    HBRUSH  hbr;
    RECT    rc;

    /*
     * Note: FrameRect() excludes right and bottom of rectangle.
     */
    rc.left = FUNC2(gui.col);
    rc.top = FUNC3(gui.row);
    rc.right = rc.left + gui.char_width;
#ifdef FEAT_MBYTE
    if (mb_lefthalve(gui.row, gui.col))
	rc.right += gui.char_width;
#endif
    rc.bottom = rc.top + gui.char_height;
    hbr = FUNC0(color);
    FUNC4(s_hdc, &rc, hbr);
    FUNC1(hbr);
}