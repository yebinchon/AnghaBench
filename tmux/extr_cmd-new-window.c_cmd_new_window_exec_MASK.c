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
struct spawn_context {int idx; int /*<<< orphan*/  environ; int /*<<< orphan*/  flags; void* cwd; int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; void* name; struct client* c; struct session* s; struct cmdq_item* item; } ;
struct session {struct winlink* curw; } ;
struct TYPE_4__ {int idx; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args_value {int dummy; } ;
struct args {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct cmd_find_state current; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* NEW_WINDOW_TEMPLATE ; 
 int /*<<< orphan*/  SPAWN_DETACHED ; 
 int /*<<< orphan*/  SPAWN_KILL ; 
 char* FUNC0 (struct args*,char,struct args_value**) ; 
 void* FUNC1 (struct args*,float) ; 
 scalar_t__ FUNC2 (struct args*,char) ; 
 char* FUNC3 (struct args_value**) ; 
 struct client* FUNC4 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_find_state*,struct winlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct session*,struct cmdq_item*,struct cmd_find_state*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC12 (struct cmdq_item*,char const*,struct client*,struct session*,struct winlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct spawn_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct session*) ; 
 int /*<<< orphan*/  FUNC16 (struct session*) ; 
 struct winlink* FUNC17 (struct spawn_context*,char**) ; 
 int FUNC18 (struct session*,struct winlink*) ; 

__attribute__((used)) static enum cmd_retval
FUNC19(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmd_find_state	*current = &item->shared->current;
	struct spawn_context	 sc;
	struct client		*c = FUNC4(item, NULL, 1);
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	int			 idx = item->target.idx;
	struct winlink		*new_wl;
	char			*cause = NULL, *cp;
	const char		*template, *add;
	struct cmd_find_state	 fs;
	struct args_value	*value;

	if (FUNC2(args, 'a') && (idx = FUNC18(s, wl)) == -1) {
		FUNC6(item, "couldn't get a window index");
		return (CMD_RETURN_ERROR);
	}

	FUNC14(&sc, 0, sizeof sc);
	sc.item = item;
	sc.s = s;
	sc.c = c;

	sc.name = FUNC1(args, 'n');
	sc.argc = args->argc;
	sc.argv = args->argv;
	sc.environ = FUNC9();

	add = FUNC0(args, 'e', &value);
	while (add != NULL) {
		FUNC11(sc.environ, add);
		add = FUNC3(&value);
	}

	sc.idx = idx;
	sc.cwd = FUNC1(args, 'c');

	sc.flags = 0;
	if (FUNC2(args, 'd'))
		sc.flags |= SPAWN_DETACHED;
	if (FUNC2(args, 'k'))
		sc.flags |= SPAWN_KILL;

	if ((new_wl = FUNC17(&sc, &cause)) == NULL) {
		FUNC6(item, "create window failed: %s", cause);
		FUNC13(cause);
		return (CMD_RETURN_ERROR);
	}
	if (!FUNC2(args, 'd') || new_wl == s->curw) {
		FUNC5(current, new_wl, 0);
		FUNC15(s);
	} else
		FUNC16(s);

	if (FUNC2(args, 'P')) {
		if ((template = FUNC1(args, 'F')) == NULL)
			template = NEW_WINDOW_TEMPLATE;
		cp = FUNC12(item, template, c, s, new_wl, NULL);
		FUNC8(item, "%s", cp);
		FUNC13(cp);
	}

	FUNC5(&fs, new_wl, 0);
	FUNC7(s, item, &fs, "after-new-window");

	FUNC10(sc.environ);
	return (CMD_RETURN_NORMAL);
}