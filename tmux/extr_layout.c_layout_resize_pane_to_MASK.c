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
struct window_pane {struct layout_cell* layout_cell; } ;
struct layout_cell {int type; int sx; int sy; int /*<<< orphan*/  cells; struct layout_cell* parent; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;

/* Variables and functions */
 int LAYOUT_LEFTRIGHT ; 
 struct layout_cell* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layout_cells ; 
 int /*<<< orphan*/  FUNC1 (struct window_pane*,int,int,int) ; 

void
FUNC2(struct window_pane *wp, enum layout_type type,
    u_int new_size)
{
	struct layout_cell     *lc, *lcparent;
	int			change, size;

	lc = wp->layout_cell;

	/* Find next parent of the same type. */
	lcparent = lc->parent;
	while (lcparent != NULL && lcparent->type != type) {
		lc = lcparent;
		lcparent = lc->parent;
	}
	if (lcparent == NULL)
		return;

	/* Work out the size adjustment. */
	if (type == LAYOUT_LEFTRIGHT)
		size = lc->sx;
	else
		size = lc->sy;
	if (lc == FUNC0(&lcparent->cells, layout_cells))
		change = size - new_size;
	else
		change = new_size - size;

	/* Resize the pane. */
	FUNC1(wp, type, change, 1);
}