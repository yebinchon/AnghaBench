#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ id; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {int force_redraw; } ;
struct main_state {char** reflog; int reflog_width; int /*<<< orphan*/  reflogs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIEW_COLUMN_ID ; 
 struct view_column* FUNC0 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char***,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(struct view *view, struct main_state *state, char *reflog)
{
	char *end = FUNC2(reflog, ' ');
	int id_width;

	if (!end)
		return false;
	*end = 0;

	if (!FUNC1(&state->reflog, state->reflogs, 1)
	    || !(reflog = FUNC3(reflog)))
		return false;

	state->reflog[state->reflogs++] = reflog;
	id_width = FUNC4(reflog);
	if (state->reflog_width < id_width) {
		struct view_column *column = FUNC0(view, VIEW_COLUMN_ID);

		state->reflog_width = id_width;
		if (column && column->opt.id.display)
			view->force_redraw = true;
	}

	return true;
}