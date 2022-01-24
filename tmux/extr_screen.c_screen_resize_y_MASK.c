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
typedef  int u_int ;
struct screen {int cy; void* rlower; scalar_t__ rupper; struct grid* grid; } ;
struct grid_line {int dummy; } ;
struct grid {int flags; int hscrolled; int hsize; int sy; } ;

/* Variables and functions */
 int GRID_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct grid*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct grid*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (struct screen*) ; 

__attribute__((used)) static void
FUNC6(struct screen *s, u_int sy)
{
	struct grid	*gd = s->grid;
	u_int		 needed, available, oldy, i;

	if (sy == 0)
		FUNC0("zero size");
	oldy = FUNC5(s);

	/*
	 * When resizing:
	 *
	 * If the height is decreasing, delete lines from the bottom until
	 * hitting the cursor, then push lines from the top into the history.
	 *
	 * When increasing, pull as many lines as possible from scrolled
	 * history (not explicitly cleared from view) to the top, then fill the
	 * remaining with blanks at the bottom.
	 */

	/* Size decreasing. */
	if (sy < oldy) {
		needed = oldy - sy;

		/* Delete as many lines as possible from the bottom. */
		available = oldy - 1 - s->cy;
		if (available > 0) {
			if (available > needed)
				available = needed;
			FUNC3(gd, oldy - available, available,
			    8);
		}
		needed -= available;

		/*
		 * Now just increase the history size, if possible, to take
		 * over the lines which are left. If history is off, delete
		 * lines from the top.
		 */
		available = s->cy;
		if (gd->flags & GRID_HISTORY) {
			gd->hscrolled += needed;
			gd->hsize += needed;
		} else if (needed > 0 && available > 0) {
			if (available > needed)
				available = needed;
			FUNC3(gd, 0, available, 8);
		}
		s->cy -= needed;
	}

	/* Resize line array. */
	FUNC1(gd, gd->hsize + sy);

	/* Size increasing. */
	if (sy > oldy) {
		needed = sy - oldy;

		/*
		 * Try to pull as much as possible out of scrolled history, if
		 * is is enabled.
		 */
		available = gd->hscrolled;
		if (gd->flags & GRID_HISTORY && available > 0) {
			if (available > needed)
				available = needed;
			gd->hscrolled -= available;
			gd->hsize -= available;
			s->cy += available;
		} else
			available = 0;
		needed -= available;

		/* Then fill the rest in with blanks. */
		for (i = gd->hsize + sy - needed; i < gd->hsize + sy; i++)
			FUNC4(FUNC2(gd, i), 0, sizeof(struct grid_line));
	}

	/* Set the new size, and reset the scroll region. */
	gd->sy = sy;
	s->rupper = 0;
	s->rlower = FUNC5(s) - 1;
}