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
struct window {struct layout_cell* layout_root; } ;
struct layout_cell {scalar_t__ yoff; scalar_t__ xoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct layout_cell*) ; 

void
FUNC1(struct window *w)
{
	struct layout_cell      *lc = w->layout_root;

	lc->xoff = 0;
	lc->yoff = 0;

	FUNC0(lc);
}