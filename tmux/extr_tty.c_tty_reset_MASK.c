#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grid_cell {int attr; } ;
struct tty {int last_wp; struct grid_cell last_cell; struct grid_cell cell; } ;

/* Variables and functions */
 int GRID_ATTR_CHARSET ; 
 int /*<<< orphan*/  TTYC_RMACS ; 
 int /*<<< orphan*/  TTYC_SGR0 ; 
 int /*<<< orphan*/  FUNC0 (struct grid_cell*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct tty *tty)
{
	struct grid_cell	*gc = &tty->cell;

	if (!FUNC0(gc, &grid_default_cell)) {
		if ((gc->attr & GRID_ATTR_CHARSET) && FUNC2(tty))
			FUNC3(tty, TTYC_RMACS);
		FUNC3(tty, TTYC_SGR0);
		FUNC1(gc, &grid_default_cell, sizeof *gc);
	}

	FUNC1(&tty->last_cell, &grid_default_cell, sizeof tty->last_cell);
	tty->last_wp = -1;
}