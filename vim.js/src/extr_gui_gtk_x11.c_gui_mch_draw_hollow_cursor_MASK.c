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
struct TYPE_4__ {int char_width; scalar_t__ char_height; int /*<<< orphan*/  row; int /*<<< orphan*/  col; int /*<<< orphan*/  text_gc; TYPE_1__* drawarea; int /*<<< orphan*/  fgcolor; } ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(guicolor_T color)
{
    int		i = 1;

    if (gui.drawarea->window == NULL)
	return;

    FUNC4(color);

    FUNC3(gui.text_gc, gui.fgcolor);
    if (FUNC5(gui.row, gui.col))
	i = 2;
    FUNC2(gui.drawarea->window, gui.text_gc,
	    FALSE,
	    FUNC0(gui.col), FUNC1(gui.row),
	    i * gui.char_width - 1, gui.char_height - 1);
}