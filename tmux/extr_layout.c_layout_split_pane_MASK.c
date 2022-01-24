#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct window_pane {TYPE_1__* window; struct layout_cell* layout_cell; } ;
struct layout_cell {int sx; int sy; int xoff; int yoff; int type; int /*<<< orphan*/  cells; struct layout_cell* parent; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;
struct TYPE_5__ {struct layout_cell* layout_root; int /*<<< orphan*/  options; } ;

/* Variables and functions */
#define  LAYOUT_LEFTRIGHT 129 
#define  LAYOUT_TOPBOTTOM 128 
 int PANE_MINIMUM ; 
 int SPAWN_BEFORE ; 
 int SPAWN_FULLSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct layout_cell*,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct layout_cell*,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct layout_cell*,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct layout_cell*,int) ; 
 struct layout_cell* FUNC7 (struct layout_cell*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct layout_cell*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC10 (struct layout_cell*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct layout_cell*) ; 
 int /*<<< orphan*/  FUNC12 (struct layout_cell*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct layout_cell*,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 

struct layout_cell *
FUNC15(struct window_pane *wp, enum layout_type type, int size,
    int flags)
{
	struct layout_cell     *lc, *lcparent, *lcnew, *lc1, *lc2;
	u_int			sx, sy, xoff, yoff, size1, size2, minimum;
	u_int			new_size, saved_size, resize_first = 0;
	int			full_size = (flags & SPAWN_FULLSIZE), status;

	/*
	 * If full_size is specified, add a new cell at the top of the window
	 * layout. Otherwise, split the cell for the current pane.
	 */
	if (full_size)
		lc = wp->window->layout_root;
	else
		lc = wp->layout_cell;
	status = FUNC14(wp->window->options, "pane-border-status");

	/* Copy the old cell size. */
	sx = lc->sx;
	sy = lc->sy;
	xoff = lc->xoff;
	yoff = lc->yoff;

	/* Check there is enough space for the two new panes. */
	switch (type) {
	case LAYOUT_LEFTRIGHT:
		if (sx < PANE_MINIMUM * 2 + 1)
			return (NULL);
		break;
	case LAYOUT_TOPBOTTOM:
		if (FUNC6(wp->window, lc, status))
			minimum = PANE_MINIMUM * 2 + 2;
		else
			minimum = PANE_MINIMUM * 2 + 1;
		if (sy < minimum)
			return (NULL);
		break;
	default:
		FUNC5("bad layout type");
	}

	/*
	 * Calculate new cell sizes. size is the target size or -1 for middle
	 * split, size1 is the size of the top/left and size2 the bottom/right.
	 */
	if (type == LAYOUT_LEFTRIGHT)
		saved_size = sx;
	else
		saved_size = sy;
	if (size < 0)
		size2 = ((saved_size + 1) / 2) - 1;
	else if (flags & SPAWN_BEFORE)
		size2 = saved_size - size - 1;
	else
		size2 = size;
	if (size2 < PANE_MINIMUM)
		size2 = PANE_MINIMUM;
	else if (size2 > saved_size - 2)
		size2 = saved_size - 2;
	size1 = saved_size - 1 - size2;

	/* Which size are we using? */
	if (flags & SPAWN_BEFORE)
		new_size = size2;
	else
		new_size = size1;

	/* Confirm there is enough space for full size pane. */
	if (full_size && !FUNC13(wp->window, lc, type, new_size))
		return (NULL);

	if (lc->parent != NULL && lc->parent->type == type) {
		/*
		 * If the parent exists and is of the same type as the split,
		 * create a new cell and insert it after this one.
		 */
		lcparent = lc->parent;
		lcnew = FUNC7(lcparent);
		if (flags & SPAWN_BEFORE)
			FUNC1(lc, lcnew, entry);
		else
			FUNC0(&lcparent->cells, lc, lcnew, entry);
	} else if (full_size && lc->parent == NULL && lc->type == type) {
		/*
		 * If the new full size pane is the same type as the root
		 * split, insert the new pane under the existing root cell
		 * instead of creating a new root cell. The existing layout
		 * must be resized before inserting the new cell.
		 */
		if (lc->type == LAYOUT_LEFTRIGHT) {
			lc->sx = new_size;
			FUNC11(wp->window, lc);
			lc->sx = saved_size;
		} else if (lc->type == LAYOUT_TOPBOTTOM) {
			lc->sy = new_size;
			FUNC11(wp->window, lc);
			lc->sy = saved_size;
		}
		resize_first = 1;

		/* Create the new cell. */
		lcnew = FUNC7(lc);
		size = saved_size - 1 - new_size;
		if (lc->type == LAYOUT_LEFTRIGHT)
			FUNC12(lcnew, size, sy, 0, 0);
		else if (lc->type == LAYOUT_TOPBOTTOM)
			FUNC12(lcnew, sx, size, 0, 0);
		if (flags & SPAWN_BEFORE)
			FUNC2(&lc->cells, lcnew, entry);
		else
			FUNC3(&lc->cells, lcnew, entry);
	} else {
		/*
		 * Otherwise create a new parent and insert it.
		 */

		/* Create and insert the replacement parent. */
		lcparent = FUNC7(lc->parent);
		FUNC10(lcparent, type);
		FUNC12(lcparent, sx, sy, xoff, yoff);
		if (lc->parent == NULL)
			wp->window->layout_root = lcparent;
		else
			FUNC4(&lc->parent->cells, lc, lcparent, entry);

		/* Insert the old cell. */
		lc->parent = lcparent;
		FUNC2(&lcparent->cells, lc, entry);

		/* Create the new child cell. */
		lcnew = FUNC7(lcparent);
		if (flags & SPAWN_BEFORE)
			FUNC2(&lcparent->cells, lcnew, entry);
		else
			FUNC3(&lcparent->cells, lcnew, entry);
	}
	if (flags & SPAWN_BEFORE) {
		lc1 = lcnew;
		lc2 = lc;
	} else {
		lc1 = lc;
		lc2 = lcnew;
	}

	/*
	 * Set new cell sizes. size1 is the size of the top/left and size2 the
	 * bottom/right.
	 */
	if (!resize_first && type == LAYOUT_LEFTRIGHT) {
		FUNC12(lc1, size1, sy, xoff, yoff);
		FUNC12(lc2, size2, sy, xoff + lc1->sx + 1, yoff);
	} else if (!resize_first && type == LAYOUT_TOPBOTTOM) {
		FUNC12(lc1, sx, size1, xoff, yoff);
		FUNC12(lc2, sx, size2, xoff, yoff + lc1->sy + 1);
	}
	if (full_size) {
		if (!resize_first)
			FUNC11(wp->window, lc);
		FUNC8(wp->window);
	} else
		FUNC9(lc, wp);

	return (lcnew);
}