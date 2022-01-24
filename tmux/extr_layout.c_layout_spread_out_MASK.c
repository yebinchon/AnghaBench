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
struct window_pane {TYPE_1__* layout_cell; struct window* window; } ;
struct window {int dummy; } ;
struct layout_cell {struct layout_cell* parent; } ;
struct TYPE_2__ {struct layout_cell* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window*) ; 
 int /*<<< orphan*/  FUNC1 (struct window*) ; 
 scalar_t__ FUNC2 (struct window*,struct layout_cell*) ; 

void
FUNC3(struct window_pane *wp)
{
	struct layout_cell	*parent;
	struct window		*w = wp->window;

	parent = wp->layout_cell->parent;
	if (parent == NULL)
		return;

	do {
		if (FUNC2(w, parent)) {
			FUNC0(w);
			FUNC1(w);
			break;
		}
	} while ((parent = parent->parent) != NULL);
}