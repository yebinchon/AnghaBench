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
typedef  scalar_t__ u_int ;
struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct window_copy_mode_data {scalar_t__ selx; scalar_t__ sely; scalar_t__ endselx; scalar_t__ endsely; scalar_t__ cy; scalar_t__ cursordrag; scalar_t__ rectflag; int /*<<< orphan*/  modekeys; struct screen screen; } ;
struct options {int dummy; } ;
struct grid_cell {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct options* options; } ;

/* Variables and functions */
 scalar_t__ CURSORDRAG_ENDSEL ; 
 int /*<<< orphan*/  GRID_FLAG_NOPALETTE ; 
 int WINDOW_COPY_REL_POS_ON_SCREEN ; 
 int /*<<< orphan*/  FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC2 (struct grid_cell*,struct options*,char*) ; 
 int FUNC3 (struct window_mode_entry*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 

__attribute__((used)) static int
FUNC6(struct window_mode_entry *wme, int may_redraw)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	struct options			*oo = wp->window->options;
	struct grid_cell		 gc;
	u_int				 sx, sy, cy, endsx, endsy;
	int				 startrelpos, endrelpos;

	FUNC5(wme);

	/* Adjust the selection. */
	sx = data->selx;
	sy = data->sely;
	startrelpos = FUNC3(wme, &sx, &sy);

	/* Adjust the end of selection. */
	endsx = data->endselx;
	endsy = data->endsely;
	endrelpos = FUNC3(wme, &endsx, &endsy);

	/* Selection is outside of the current screen */
	if (startrelpos == endrelpos &&
	    startrelpos != WINDOW_COPY_REL_POS_ON_SCREEN) {
		FUNC0(s);
		return (0);
	}

	/* Set colours and selection. */
	FUNC2(&gc, oo, "mode-style");
	gc.flags |= GRID_FLAG_NOPALETTE;
	FUNC1(s, sx, sy, endsx, endsy, data->rectflag,
	    data->modekeys, &gc);

	if (data->rectflag && may_redraw) {
		/*
		 * Can't rely on the caller to redraw the right lines for
		 * rectangle selection - find the highest line and the number
		 * of lines, and redraw just past that in both directions
		 */
		cy = data->cy;
		if (data->cursordrag == CURSORDRAG_ENDSEL) {
			if (sy < cy)
				FUNC4(wme, sy, cy - sy + 1);
			else
				FUNC4(wme, cy, sy - cy + 1);
		} else {
			if (endsy < cy) {
				FUNC4(wme, endsy,
				    cy - endsy + 1);
			} else {
				FUNC4(wme, cy,
				    endsy - cy + 1);
			}
		}
	}

	return (1);
}