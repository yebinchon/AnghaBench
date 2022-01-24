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
typedef  scalar_t__ u_int ;
struct window {struct layout_cell* layout_root; } ;
struct layout_cell {scalar_t__ sx; scalar_t__ sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAYOUT_LEFTRIGHT ; 
 int /*<<< orphan*/  LAYOUT_TOPBOTTOM ; 
 int /*<<< orphan*/  FUNC0 (struct window*) ; 
 int /*<<< orphan*/  FUNC1 (struct window*) ; 
 int /*<<< orphan*/  FUNC2 (struct window*,struct layout_cell*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct window*,struct layout_cell*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct window *w, u_int sx, u_int sy)
{
	struct layout_cell	*lc = w->layout_root;
	int			 xlimit, ylimit, xchange, ychange;

	/*
	 * Adjust horizontally. Do not attempt to reduce the layout lower than
	 * the minimum (more than the amount returned by layout_resize_check).
	 *
	 * This can mean that the window size is smaller than the total layout
	 * size: redrawing this is handled at a higher level, but it does leave
	 * a problem with growing the window size here: if the current size is
	 * < the minimum, growing proportionately by adding to each pane is
	 * wrong as it would keep the layout size larger than the window size.
	 * Instead, spread the difference between the minimum and the new size
	 * out proportionately - this should leave the layout fitting the new
	 * window size.
	 */
	xchange = sx - lc->sx;
	xlimit = FUNC3(w, lc, LAYOUT_LEFTRIGHT);
	if (xchange < 0 && xchange < -xlimit)
		xchange = -xlimit;
	if (xlimit == 0) {
		if (sx <= lc->sx)	/* lc->sx is minimum possible */
			xchange = 0;
		else
			xchange = sx - lc->sx;
	}
	if (xchange != 0)
		FUNC2(w, lc, LAYOUT_LEFTRIGHT, xchange);

	/* Adjust vertically in a similar fashion. */
	ychange = sy - lc->sy;
	ylimit = FUNC3(w, lc, LAYOUT_TOPBOTTOM);
	if (ychange < 0 && ychange < -ylimit)
		ychange = -ylimit;
	if (ylimit == 0) {
		if (sy <= lc->sy)	/* lc->sy is minimum possible */
			ychange = 0;
		else
			ychange = sy - lc->sy;
	}
	if (ychange != 0)
		FUNC2(w, lc, LAYOUT_TOPBOTTOM, ychange);

	/* Fix cell offsets. */
	FUNC0(w);
	FUNC1(w);
}