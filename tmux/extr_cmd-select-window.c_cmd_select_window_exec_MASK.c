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
struct winlink {int /*<<< orphan*/  idx; } ;
struct session {struct winlink* curw; } ;
struct TYPE_4__ {struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {struct session* s; } ;
struct cmd {int /*<<< orphan*/  args; int /*<<< orphan*/ * entry; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct cmd_find_state current; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_find_state*,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_last_window_entry ; 
 int /*<<< orphan*/  cmd_next_window_entry ; 
 int /*<<< orphan*/  cmd_previous_window_entry ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct session*,struct cmdq_item*,struct cmd_find_state*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct session*) ; 
 scalar_t__ FUNC6 (struct session*) ; 
 scalar_t__ FUNC7 (struct session*,int) ; 
 scalar_t__ FUNC8 (struct session*,int) ; 
 scalar_t__ FUNC9 (struct session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC10(struct cmd *self, struct cmdq_item *item)
{
	struct cmd_find_state	*current = &item->shared->current;
	struct winlink		*wl = item->target.wl;
	struct session		*s = item->target.s;
	int			 next, previous, last, activity;

	next = self->entry == &cmd_next_window_entry;
	if (FUNC0(self->args, 'n'))
		next = 1;
	previous = self->entry == &cmd_previous_window_entry;
	if (FUNC0(self->args, 'p'))
		previous = 1;
	last = self->entry == &cmd_last_window_entry;
	if (FUNC0(self->args, 'l'))
		last = 1;

	if (next || previous || last) {
		activity = FUNC0(self->args, 'a');
		if (next) {
			if (FUNC7(s, activity) != 0) {
				FUNC2(item, "no next window");
				return (CMD_RETURN_ERROR);
			}
		} else if (previous) {
			if (FUNC8(s, activity) != 0) {
				FUNC2(item, "no previous window");
				return (CMD_RETURN_ERROR);
			}
		} else {
			if (FUNC6(s) != 0) {
				FUNC2(item, "no last window");
				return (CMD_RETURN_ERROR);
			}
		}
		FUNC1(current, s, 0);
		FUNC5(s);
		FUNC3(s, item, current, "after-select-window");
	} else {
		/*
		 * If -T and select-window is invoked on same window as
		 * current, switch to previous window.
		 */
		if (FUNC0(self->args, 'T') && wl == s->curw) {
			if (FUNC6(s) != 0) {
				FUNC2(item, "no last window");
				return (-1);
			}
			if (current->s == s)
				FUNC1(current, s, 0);
			FUNC5(s);
		} else if (FUNC9(s, wl->idx) == 0) {
			FUNC1(current, s, 0);
			FUNC5(s);
		}
		FUNC3(s, item, current, "after-select-window");
	}
	FUNC4();

	return (CMD_RETURN_NORMAL);
}