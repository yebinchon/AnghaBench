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
struct TYPE_4__ {scalar_t__ visibility; int scroll_region_left; int char_width; int scroll_region_right; int char_height; int scroll_region_bot; TYPE_1__* drawarea; int /*<<< orphan*/  text_gc; int /*<<< orphan*/  bgcolor; int /*<<< orphan*/  fgcolor; } ;
struct TYPE_3__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ GDK_VISIBILITY_FULLY_OBSCURED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 

void
FUNC7(int row, int num_lines)
{
    if (gui.visibility == GDK_VISIBILITY_FULLY_OBSCURED)
	return;			/* Can't see the window */

    FUNC4(gui.text_gc, gui.fgcolor);
    FUNC3(gui.text_gc, gui.bgcolor);

    /* copy one extra pixel, for when bold has spilled over */
    FUNC5(gui.drawarea->window, gui.text_gc,
	    FUNC0(gui.scroll_region_left), FUNC1(row + num_lines),
	    gui.drawarea->window,
	    FUNC0(gui.scroll_region_left), FUNC1(row),
	    gui.char_width * (gui.scroll_region_right
					    - gui.scroll_region_left + 1) + 1,
	    gui.char_height * (gui.scroll_region_bot - row - num_lines + 1));

    FUNC6(row, gui.scroll_region_left,
				row + num_lines - 1, gui.scroll_region_right);
    FUNC2();
}