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
struct layout_cell {int type; TYPE_1__* wp; int /*<<< orphan*/  cells; } ;
struct TYPE_2__ {int /*<<< orphan*/ * layout_cell; } ;

/* Variables and functions */
#define  LAYOUT_LEFTRIGHT 130 
#define  LAYOUT_TOPBOTTOM 129 
#define  LAYOUT_WINDOWPANE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct layout_cell* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct layout_cell*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct layout_cell*) ; 

void
FUNC4(struct layout_cell *lc)
{
	struct layout_cell	*lcchild;

	switch (lc->type) {
	case LAYOUT_LEFTRIGHT:
	case LAYOUT_TOPBOTTOM:
		while (!FUNC0(&lc->cells)) {
			lcchild = FUNC1(&lc->cells);
			FUNC2(&lc->cells, lcchild, entry);
			FUNC4(lcchild);
		}
		break;
	case LAYOUT_WINDOWPANE:
		if (lc->wp != NULL)
			lc->wp->layout_cell = NULL;
		break;
	}

	FUNC3(lc);
}