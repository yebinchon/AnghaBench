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
struct winlink {int dummy; } ;
struct session {int /*<<< orphan*/  options; int /*<<< orphan*/  curw; } ;
struct TYPE_4__ {int idx; struct session* s; } ;
struct TYPE_3__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__ source; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FIND_QUIET ; 
 int /*<<< orphan*/  CMD_FIND_SESSION ; 
 int /*<<< orphan*/  CMD_FIND_WINDOW ; 
 int /*<<< orphan*/  CMD_FIND_WINDOW_INDEX ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (struct args*,char) ; 
 int FUNC1 (struct args*,char) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct cmdq_item*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_move_window_entry ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct session*,struct winlink*,struct session*,int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC8 (struct session*) ; 
 int /*<<< orphan*/  FUNC9 (struct session*,struct winlink*) ; 
 int /*<<< orphan*/  FUNC10 (struct session*) ; 
 int FUNC11 (struct session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC12(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	const char	*tflag = FUNC0(args, 't');
	struct session	*src;
	struct session	*dst;
	struct winlink	*wl;
	char		*cause;
	int		 idx, kflag, dflag, sflag;

	if (FUNC1(args, 'r')) {
		if (FUNC2(&item->target, item, tflag,
		    CMD_FIND_SESSION, CMD_FIND_QUIET) != 0)
			return (CMD_RETURN_ERROR);

		FUNC10(item->target.s);
		FUNC6();
		FUNC8(item->target.s);

		return (CMD_RETURN_NORMAL);
	}
	if (FUNC2(&item->target, item, tflag, CMD_FIND_WINDOW,
	    CMD_FIND_WINDOW_INDEX) != 0)
		return (CMD_RETURN_ERROR);
	src = item->source.s;
	dst = item->target.s;
	wl = item->source.wl;
	idx = item->target.idx;

	kflag = FUNC1(self->args, 'k');
	dflag = FUNC1(self->args, 'd');
	sflag = FUNC1(self->args, 's');

	if (FUNC1(self->args, 'a')) {
		if ((idx = FUNC11(dst, dst->curw)) == -1)
			return (CMD_RETURN_ERROR);
	}

	if (FUNC7(src, wl, dst, idx, kflag, !dflag,
	    &cause) != 0) {
		FUNC3(item, "can't link window: %s", cause);
		FUNC4(cause);
		return (CMD_RETURN_ERROR);
	}
	if (self->entry == &cmd_move_window_entry)
		FUNC9(src, wl);

	/*
	 * Renumber the winlinks in the src session only, the destination
	 * session already has the correct winlink id to us, either
	 * automatically or specified by -s.
	 */
	if (!sflag && FUNC5(src->options, "renumber-windows"))
		FUNC10(src);

	FUNC6();

	return (CMD_RETURN_NORMAL);
}