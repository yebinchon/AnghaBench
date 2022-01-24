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
struct window_pane {int /*<<< orphan*/  window; struct layout_cell* layout_cell; } ;
struct layout_cell {int type; int /*<<< orphan*/  cells; struct layout_cell* parent; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;

/* Variables and functions */
 struct layout_cell* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct layout_cell* FUNC1 (struct layout_cell*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  layout_cells ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct layout_cell*,int,int,int) ; 

void
FUNC3(struct window_pane *wp, enum layout_type type, int change,
    int opposite)
{
	struct layout_cell	*lc, *lcparent;

	lc = wp->layout_cell;

	/* Find next parent of the same type. */
	lcparent = lc->parent;
	while (lcparent != NULL && lcparent->type != type) {
		lc = lcparent;
		lcparent = lc->parent;
	}
	if (lcparent == NULL)
		return;

	/* If this is the last cell, move back one. */
	if (lc == FUNC0(&lcparent->cells, layout_cells))
		lc = FUNC1(lc, layout_cells, entry);

	FUNC2(wp->window, lc, type, change, opposite);
}