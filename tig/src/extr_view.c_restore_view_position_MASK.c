#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ lineno; int /*<<< orphan*/  col; int /*<<< orphan*/  offset; } ;
struct view {scalar_t__ lines; TYPE_1__ prev_pos; TYPE_1__ pos; int /*<<< orphan*/  win; scalar_t__ pipe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct view*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct view*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct view *view)
{
	/* Ensure that the view position is in a valid state. */
	if (!FUNC0(&view->prev_pos) ||
	    (view->pipe && view->lines <= view->prev_pos.lineno))
		return FUNC2(view, view->pos.offset, view->pos.lineno);

	/* Changing the view position cancels the restoring. */
	/* FIXME: Changing back to the first line is not detected. */
	if (FUNC0(&view->pos)) {
		FUNC1(&view->prev_pos);
		return false;
	}

	if (FUNC2(view, view->prev_pos.offset, view->prev_pos.lineno) &&
	    FUNC3(view))
		FUNC4(view->win);

	view->pos.col = view->prev_pos.col;
	FUNC1(&view->prev_pos);

	return true;
}