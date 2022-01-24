#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guicolor_T ;
struct TYPE_4__ {scalar_t__ char_height; int /*<<< orphan*/  row; scalar_t__ col; int /*<<< orphan*/  text_gc; TYPE_1__* drawarea; int /*<<< orphan*/  fgcolor; } ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;

/* Variables and functions */
 scalar_t__ CURSOR_BAR_RIGHT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(int w, int h, guicolor_T color)
{
    if (gui.drawarea->window == NULL)
	return;

    FUNC4(color);

    FUNC3(gui.text_gc, gui.fgcolor);
    FUNC2(gui.drawarea->window, gui.text_gc,
	    TRUE,
#ifdef FEAT_RIGHTLEFT
	    /* vertical line should be on the right of current point */
	    CURSOR_BAR_RIGHT ? FILL_X(gui.col + 1) - w :
#endif
	    FUNC0(gui.col),
	    FUNC1(gui.row) + gui.char_height - h,
	    w, h);
}