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
struct position {scalar_t__ offset; size_t lineno; } ;
struct view {struct position pos; int /*<<< orphan*/ * line; TYPE_1__* ops; int /*<<< orphan*/  win; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* select ) (struct view*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*,size_t) ; 
 scalar_t__ FUNC1 (struct view*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct view*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct view *view, unsigned long lineno)
{
	struct position old = view->pos;

	if (FUNC1(view, view->pos.offset, lineno)) {
		if (FUNC4(view)) {
			if (old.offset != view->pos.offset) {
				FUNC2(view);
			} else {
				FUNC0(view, old.lineno - view->pos.offset);
				FUNC0(view, view->pos.lineno - view->pos.offset);
				FUNC5(view->win);
			}
		} else {
			view->ops->select(view, &view->line[view->pos.lineno]);
		}
	}
}