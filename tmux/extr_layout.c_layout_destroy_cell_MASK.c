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
struct window {int dummy; } ;
struct layout_cell {scalar_t__ type; int /*<<< orphan*/  cells; struct layout_cell* parent; scalar_t__ yoff; scalar_t__ xoff; scalar_t__ sy; scalar_t__ sx; } ;

/* Variables and functions */
 scalar_t__ LAYOUT_LEFTRIGHT ; 
 struct layout_cell* FUNC0 (int /*<<< orphan*/ *) ; 
 struct layout_cell* FUNC1 (struct layout_cell*,int /*<<< orphan*/ ) ; 
 struct layout_cell* FUNC2 (struct layout_cell*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct layout_cell*,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  layout_cells ; 
 int /*<<< orphan*/  FUNC5 (struct layout_cell*) ; 
 int /*<<< orphan*/  FUNC6 (struct window*,struct layout_cell*,scalar_t__,scalar_t__) ; 

void
FUNC7(struct window *w, struct layout_cell *lc,
    struct layout_cell **lcroot)
{
	struct layout_cell     *lcother, *lcparent;

	/*
	 * If no parent, this is the last pane so window close is imminent and
	 * there is no need to resize anything.
	 */
	lcparent = lc->parent;
	if (lcparent == NULL) {
		FUNC5(lc);
		*lcroot = NULL;
		return;
	}

	/* Merge the space into the previous or next cell. */
	if (lc == FUNC0(&lcparent->cells))
		lcother = FUNC1(lc, entry);
	else
		lcother = FUNC2(lc, layout_cells, entry);
	if (lcother != NULL && lcparent->type == LAYOUT_LEFTRIGHT)
		FUNC6(w, lcother, lcparent->type, lc->sx + 1);
	else if (lcother != NULL)
		FUNC6(w, lcother, lcparent->type, lc->sy + 1);

	/* Remove this from the parent's list. */
	FUNC3(&lcparent->cells, lc, entry);
	FUNC5(lc);

	/*
	 * If the parent now has one cell, remove the parent from the tree and
	 * replace it by that cell.
	 */
	lc = FUNC0(&lcparent->cells);
	if (FUNC1(lc, entry) == NULL) {
		FUNC3(&lcparent->cells, lc, entry);

		lc->parent = lcparent->parent;
		if (lc->parent == NULL) {
			lc->xoff = 0; lc->yoff = 0;
			*lcroot = lc;
		} else
			FUNC4(&lc->parent->cells, lcparent, lc, entry);

		FUNC5(lcparent);
	}
}