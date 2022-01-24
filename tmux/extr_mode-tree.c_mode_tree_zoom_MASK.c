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
struct window_pane {TYPE_1__* window; } ;
struct mode_tree_data {int zoomed; struct window_pane* wp; } ;
struct args {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int WINDOW_ZOOMED ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct window_pane*) ; 

void
FUNC3(struct mode_tree_data *mtd, struct args *args)
{
	struct window_pane	*wp = mtd->wp;

	if (FUNC0(args, 'Z')) {
		mtd->zoomed = (wp->window->flags & WINDOW_ZOOMED);
		if (!mtd->zoomed && FUNC2(wp) == 0)
			FUNC1(wp->window);
	} else
		mtd->zoomed = -1;
}