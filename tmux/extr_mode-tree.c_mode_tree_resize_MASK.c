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
typedef  int /*<<< orphan*/  u_int ;
struct screen {int dummy; } ;
struct mode_tree_data {TYPE_1__* wp; struct screen screen; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PANE_REDRAW ; 
 int /*<<< orphan*/  FUNC0 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mode_tree_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mode_tree_data *mtd, u_int sx, u_int sy)
{
	struct screen	*s = &mtd->screen;

	FUNC2(s, sx, sy, 0);

	FUNC0(mtd);
	FUNC1(mtd);

	mtd->wp->flags |= PANE_REDRAW;
}