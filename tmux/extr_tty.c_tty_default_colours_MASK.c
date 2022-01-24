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
struct TYPE_4__ {int fg; int bg; } ;
struct style {TYPE_2__ gc; } ;
struct window_pane {int flags; TYPE_1__* window; struct style cached_style; struct style cached_active_style; struct options* options; } ;
struct options {int dummy; } ;
struct grid_cell {int fg; int bg; } ;
struct TYPE_3__ {struct window_pane* active; } ;

/* Variables and functions */
 int PANE_STYLECHANGED ; 
 struct style* FUNC0 (struct options*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct style*,struct style*) ; 
 int FUNC2 (struct window_pane*,int) ; 

__attribute__((used)) static void
FUNC3(struct grid_cell *gc, struct window_pane *wp)
{
	struct options	*oo = wp->options;
	struct style	*style, *active_style;
	int		 c;

	if (wp->flags & PANE_STYLECHANGED) {
		wp->flags &= ~PANE_STYLECHANGED;

		active_style = FUNC0(oo, "window-active-style");
		style = FUNC0(oo, "window-style");

		FUNC1(&wp->cached_active_style, active_style);
		FUNC1(&wp->cached_style, style);
	} else {
		active_style = &wp->cached_active_style;
		style = &wp->cached_style;
	}

	if (gc->fg == 8) {
		if (wp == wp->window->active && active_style->gc.fg != 8)
			gc->fg = active_style->gc.fg;
		else
			gc->fg = style->gc.fg;

		if (gc->fg != 8) {
			c = FUNC2(wp, gc->fg);
			if (c != -1)
				gc->fg = c;
		}
	}

	if (gc->bg == 8) {
		if (wp == wp->window->active && active_style->gc.bg != 8)
			gc->bg = active_style->gc.bg;
		else
			gc->bg = style->gc.bg;

		if (gc->bg != 8) {
			c = FUNC2(wp, gc->bg);
			if (c != -1)
				gc->bg = c;
		}
	}
}