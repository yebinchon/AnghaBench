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
struct window_pane {struct layout_cell* layout_cell; } ;
struct layout_cell {struct window_pane* wp; int /*<<< orphan*/  cells; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAYOUT_WINDOWPANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct layout_cell *lc, struct window_pane *wp)
{
	lc->type = LAYOUT_WINDOWPANE;

	FUNC0(&lc->cells);

	wp->layout_cell = lc;
	lc->wp = wp;
}