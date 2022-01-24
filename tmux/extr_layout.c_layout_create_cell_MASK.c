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
struct layout_cell {int /*<<< orphan*/ * wp; void* yoff; void* xoff; void* sy; void* sx; int /*<<< orphan*/  cells; struct layout_cell* parent; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAYOUT_WINDOWPANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* UINT_MAX ; 
 struct layout_cell* FUNC1 (int) ; 

struct layout_cell *
FUNC2(struct layout_cell *lcparent)
{
	struct layout_cell	*lc;

	lc = FUNC1(sizeof *lc);
	lc->type = LAYOUT_WINDOWPANE;
	lc->parent = lcparent;

	FUNC0(&lc->cells);

	lc->sx = UINT_MAX;
	lc->sy = UINT_MAX;

	lc->xoff = UINT_MAX;
	lc->yoff = UINT_MAX;

	lc->wp = NULL;

	return (lc);
}