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
struct window_pane {int /*<<< orphan*/  window; } ;
struct mode_tree_data {scalar_t__ zoomed; int dead; int /*<<< orphan*/  filter; int /*<<< orphan*/  search; int /*<<< orphan*/  screen; int /*<<< orphan*/  children; struct window_pane* wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct mode_tree_data *mtd)
{
	struct window_pane	*wp = mtd->wp;

	if (mtd->zoomed == 0)
		FUNC5(wp->window);

	FUNC2(&mtd->children);
	FUNC1(mtd);
	FUNC4(&mtd->screen);

	FUNC0(mtd->search);
	FUNC0(mtd->filter);

	mtd->dead = 1;
	FUNC3(mtd);
}