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
typedef  int u_int ;
struct screen {int cx; int cy; TYPE_1__* grid; } ;
struct window_pane {scalar_t__ saved_cx; scalar_t__ saved_cy; int /*<<< orphan*/  flags; TYPE_2__* saved_grid; struct screen base; int /*<<< orphan*/  saved_cell; int /*<<< orphan*/  options; } ;
struct grid_cell {int dummy; } ;
struct TYPE_5__ {int sy; int sx; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_HISTORY ; 
 int /*<<< orphan*/  PANE_REDRAW ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen*) ; 
 int /*<<< orphan*/  FUNC5 (struct screen*,int,int,int) ; 
 int FUNC6 (struct screen*) ; 
 int FUNC7 (struct screen*) ; 

void
FUNC8(struct window_pane *wp, struct grid_cell *gc,
    int cursor)
{
	struct screen	*s = &wp->base;
	u_int		 sx, sy;

	if (!FUNC3(wp->options, "alternate-screen"))
		return;

	/*
	 * Restore the cursor position and cell. This happens even if not
	 * currently in the alternate screen.
	 */
	if (cursor && wp->saved_cx != UINT_MAX && wp->saved_cy != UINT_MAX) {
		s->cx = wp->saved_cx;
		if (s->cx > FUNC6(s) - 1)
			s->cx = FUNC6(s) - 1;
		s->cy = wp->saved_cy;
		if (s->cy > FUNC7(s) - 1)
			s->cy = FUNC7(s) - 1;
		FUNC2(gc, &wp->saved_cell, sizeof *gc);
	}

	if (wp->saved_grid == NULL)
		return;
	sx = FUNC6(s);
	sy = FUNC7(s);

	/*
	 * If the current size is bigger, temporarily resize to the old size
	 * before copying back.
	 */
	if (sy > wp->saved_grid->sy)
		FUNC5(s, sx, wp->saved_grid->sy, 1);

	/* Restore the saved grid. */
	FUNC1(s->grid, FUNC4(s), wp->saved_grid, 0, sy);

	/*
	 * Turn history back on (so resize can use it) and then resize back to
	 * the current size.
	 */
	wp->base.grid->flags |= GRID_HISTORY;
	if (sy > wp->saved_grid->sy || sx != wp->saved_grid->sx)
		FUNC5(s, sx, sy, 1);

	FUNC0(wp->saved_grid);
	wp->saved_grid = NULL;

	wp->flags |= PANE_REDRAW;
}