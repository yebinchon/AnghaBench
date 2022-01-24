#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vimWindow; int /*<<< orphan*/  back_pixel; int /*<<< orphan*/  def_back_pixel; int /*<<< orphan*/  norm_pixel; int /*<<< orphan*/  def_norm_pixel; } ;

/* Variables and functions */
 int FAIL ; 
 int OK ; 
 int /*<<< orphan*/  Pg_BLACK ; 
 int /*<<< orphan*/  Pg_WHITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int gui_win_x ; 
 int gui_win_y ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(void)
{
    gui.norm_pixel =  Pg_BLACK;
    gui.back_pixel =  Pg_WHITE;

    FUNC4();

    FUNC1();
    gui.def_norm_pixel = gui.norm_pixel;
    gui.def_back_pixel = gui.back_pixel;

    FUNC3();

    if (gui_win_x != -1 && gui_win_y != -1)
	FUNC2(gui_win_x, gui_win_y);

    return (FUNC0(gui.vimWindow) == 0) ? OK : FAIL;
}