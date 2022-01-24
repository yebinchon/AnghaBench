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
typedef  int /*<<< orphan*/  u_int ;
struct screen {TYPE_1__* grid; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
struct window_pane {int /*<<< orphan*/  flags; struct screen base; int /*<<< orphan*/  saved_cell; int /*<<< orphan*/  saved_cy; int /*<<< orphan*/  saved_cx; int /*<<< orphan*/ * saved_grid; int /*<<< orphan*/  options; } ;
struct grid_cell {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_HISTORY ; 
 int /*<<< orphan*/  PANE_REDRAW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct grid_cell*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct screen*) ; 
 int /*<<< orphan*/  FUNC6 (struct screen*) ; 
 int /*<<< orphan*/  FUNC7 (struct screen*) ; 

void
FUNC8(struct window_pane *wp, struct grid_cell *gc,
    int cursor)
{
	struct screen	*s = &wp->base;
	u_int		 sx, sy;

	if (wp->saved_grid != NULL)
		return;
	if (!FUNC4(wp->options, "alternate-screen"))
		return;
	sx = FUNC6(s);
	sy = FUNC7(s);

	wp->saved_grid = FUNC0(sx, sy, 0);
	FUNC1(wp->saved_grid, 0, s->grid, FUNC5(s), sy);
	if (cursor) {
		wp->saved_cx = s->cx;
		wp->saved_cy = s->cy;
	}
	FUNC3(&wp->saved_cell, gc, sizeof wp->saved_cell);

	FUNC2(s->grid, 0, 0, sx, sy, 8);

	wp->base.grid->flags &= ~GRID_HISTORY;

	wp->flags |= PANE_REDRAW;
}