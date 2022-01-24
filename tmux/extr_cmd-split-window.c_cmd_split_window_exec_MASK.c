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
struct window_pane {int sy; int sx; int /*<<< orphan*/  window; } ;
struct spawn_context {int argc; char** argv; int idx; int flags; int /*<<< orphan*/  environ; void* cwd; int /*<<< orphan*/ * name; struct layout_cell* lc; struct window_pane* wp0; struct winlink* wl; struct session* s; struct cmdq_item* item; } ;
struct session {int dummy; } ;
struct layout_cell {int dummy; } ;
struct TYPE_4__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args_value {int dummy; } ;
struct args {int argc; char** argv; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct cmd_find_state current; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int CMD_RETURN_WAIT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int LAYOUT_LEFTRIGHT ; 
 int LAYOUT_TOPBOTTOM ; 
 int SPAWN_BEFORE ; 
 int SPAWN_DETACHED ; 
 int SPAWN_EMPTY ; 
 int SPAWN_FULLSIZE ; 
 char* SPLIT_WINDOW_TEMPLATE ; 
 char* FUNC0 (struct args*,char,struct args_value**) ; 
 void* FUNC1 (struct args*,float) ; 
 scalar_t__ FUNC2 (struct args*,char) ; 
 char* FUNC3 (struct args_value**) ; 
 int FUNC4 (struct args*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 struct client* FUNC5 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_find_state*,struct winlink*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct session*,struct cmdq_item*,struct cmd_find_state*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC13 (struct cmdq_item*,char const*,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct window_pane*) ; 
 struct layout_cell* FUNC16 (struct window_pane*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct spawn_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct session*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC21 (struct spawn_context*,char**) ; 
 size_t FUNC22 (char const*) ; 
 int FUNC23 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC24 (struct window_pane*,struct cmdq_item*,char**) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct window_pane*) ; 
 char* FUNC26 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC27(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmd_find_state	*current = &item->shared->current;
	struct spawn_context	 sc;
	struct client		*c = FUNC5(item, NULL, 1);
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	struct window_pane	*wp = item->target.wp, *new_wp;
	enum layout_type	 type;
	struct layout_cell	*lc;
	struct cmd_find_state	 fs;
	int			 size, percentage, flags, input;
	const char		*template, *add, *errstr, *p;
	char			*cause, *cp, *copy;
	size_t			 plen;
	struct args_value	*value;

	if (FUNC2(args, 'h'))
		type = LAYOUT_LEFTRIGHT;
	else
		type = LAYOUT_TOPBOTTOM;
	if ((p = FUNC1(args, 'l')) != NULL) {
		plen = FUNC22(p);
		if (p[plen - 1] == '%') {
			copy = FUNC26(p);
			copy[plen - 1] = '\0';
			percentage = FUNC23(copy, 0, INT_MAX, &errstr);
			FUNC14(copy);
			if (errstr != NULL) {
				FUNC7(item, "percentage %s", errstr);
				return (CMD_RETURN_ERROR);
			}
			if (type == LAYOUT_TOPBOTTOM)
				size = (wp->sy * percentage) / 100;
			else
				size = (wp->sx * percentage) / 100;
		} else {
			size = FUNC4(args, 'l', 0, INT_MAX, &cause);
			if (cause != NULL) {
				FUNC7(item, "lines %s", cause);
				FUNC14(cause);
				return (CMD_RETURN_ERROR);
			}
		}
	} else if (FUNC2(args, 'p')) {
		percentage = FUNC4(args, 'p', 0, INT_MAX, &cause);
		if (cause != NULL) {
			FUNC7(item, "create pane failed: -p %s", cause);
			FUNC14(cause);
			return (CMD_RETURN_ERROR);
		}
		if (type == LAYOUT_TOPBOTTOM)
			size = (wp->sy * percentage) / 100;
		else
			size = (wp->sx * percentage) / 100;
	} else
		size = -1;

	FUNC20(wp->window);
	input = (FUNC2(args, 'I') && args->argc == 0);

	flags = 0;
	if (FUNC2(args, 'b'))
		flags |= SPAWN_BEFORE;
	if (FUNC2(args, 'f'))
		flags |= SPAWN_FULLSIZE;
	if (input || (args->argc == 1 && *args->argv[0] == '\0'))
		flags |= SPAWN_EMPTY;

	lc = FUNC16(wp, type, size, flags);
	if (lc == NULL) {
		FUNC7(item, "no space for new pane");
		return (CMD_RETURN_ERROR);
	}

	FUNC17(&sc, 0, sizeof sc);
	sc.item = item;
	sc.s = s;
	sc.wl = wl;

	sc.wp0 = wp;
	sc.lc = lc;

	sc.name = NULL;
	sc.argc = args->argc;
	sc.argv = args->argv;
	sc.environ = FUNC10();

	add = FUNC0(args, 'e', &value);
	while (add != NULL) {
		FUNC12(sc.environ, add);
		add = FUNC3(&value);
	}

	sc.idx = -1;
	sc.cwd = FUNC1(args, 'c');

	sc.flags = flags;
	if (FUNC2(args, 'd'))
		sc.flags |= SPAWN_DETACHED;

	if ((new_wp = FUNC21(&sc, &cause)) == NULL) {
		FUNC15(new_wp);
		FUNC7(item, "create pane failed: %s", cause);
		FUNC14(cause);
		return (CMD_RETURN_ERROR);
	}
	if (input && FUNC24(new_wp, item, &cause) != 0) {
		FUNC15(new_wp);
		FUNC25(wp->window, new_wp);
		FUNC7(item, "%s", cause);
		FUNC14(cause);
		return (CMD_RETURN_ERROR);
	}
	if (!FUNC2(args, 'd'))
		FUNC6(current, wl, new_wp, 0);
	FUNC18(wp->window);
	FUNC19(s);

	if (FUNC2(args, 'P')) {
		if ((template = FUNC1(args, 'F')) == NULL)
			template = SPLIT_WINDOW_TEMPLATE;
		cp = FUNC13(item, template, c, s, wl, new_wp);
		FUNC9(item, "%s", cp);
		FUNC14(cp);
	}

	FUNC6(&fs, wl, new_wp, 0);
	FUNC8(s, item, &fs, "after-split-window");

	FUNC11(sc.environ);
	if (input)
		return (CMD_RETURN_WAIT);
	return (CMD_RETURN_NORMAL);
}