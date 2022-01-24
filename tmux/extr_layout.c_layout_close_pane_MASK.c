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
struct window_pane {int /*<<< orphan*/  layout_cell; struct window* window; } ;
struct window {int /*<<< orphan*/ * layout_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct window*) ; 
 int /*<<< orphan*/  FUNC2 (struct window*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct window*) ; 

void
FUNC4(struct window_pane *wp)
{
	struct window	*w = wp->window;

	/* Remove the cell. */
	FUNC0(w, wp->layout_cell, &w->layout_root);

	/* Fix pane offsets and sizes. */
	if (w->layout_root != NULL) {
		FUNC1(w);
		FUNC2(w);
	}
	FUNC3("window-layout-changed", w);
}