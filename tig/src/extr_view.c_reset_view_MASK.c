#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lineno; } ;
struct view {int lines; scalar_t__ update_secs; scalar_t__ custom_lines; scalar_t__* vid; TYPE_2__* line; scalar_t__ columns; TYPE_3__ pos; TYPE_1__* env; TYPE_3__ prev_pos; int /*<<< orphan*/  prev; } ;
struct TYPE_5__ {struct TYPE_5__* data; } ;
struct TYPE_4__ {scalar_t__ goto_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*) ; 

void
FUNC4(struct view *view)
{
	int i;

	for (i = 0; i < view->lines; i++)
		FUNC1(view->line[i].data);
	FUNC1(view->line);

	FUNC2(view);
	view->prev_pos = view->pos;
	/* A view without a previous view is the first view */
	if (!view->prev && !view->lines && view->prev_pos.lineno == 0)
		view->prev_pos.lineno = view->env->goto_lineno;
	FUNC0(&view->pos);

	if (view->columns)
		FUNC3(view);

	view->line = NULL;
	view->lines  = 0;
	view->vid[0] = 0;
	view->custom_lines = 0;
	view->update_secs = 0;
}