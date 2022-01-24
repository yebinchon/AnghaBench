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
struct winlink {int /*<<< orphan*/  window; } ;
struct spawn_context {int idx; int /*<<< orphan*/  environ; int /*<<< orphan*/  flags; int /*<<< orphan*/  cwd; int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; int /*<<< orphan*/ * name; int /*<<< orphan*/  c; struct winlink* wl; struct session* s; struct cmdq_item* item; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args_value {int dummy; } ;
struct args {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  SPAWN_KILL ; 
 int /*<<< orphan*/  SPAWN_RESPAWN ; 
 char* FUNC0 (struct args*,char,struct args_value**) ; 
 int /*<<< orphan*/  FUNC1 (struct args*,char) ; 
 scalar_t__ FUNC2 (struct args*,char) ; 
 char* FUNC3 (struct args_value**) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct spawn_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct spawn_context*,char**) ; 

__attribute__((used)) static enum cmd_retval
FUNC13(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct spawn_context	 sc;
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	char			*cause = NULL;
	const char		*add;
	struct args_value	*value;

	FUNC10(&sc, 0, sizeof sc);
	sc.item = item;
	sc.s = s;
	sc.wl = wl;
	sc.c = FUNC4(item, NULL, 1);

	sc.name = NULL;
	sc.argc = args->argc;
	sc.argv = args->argv;
	sc.environ = FUNC6();

	add = FUNC0(args, 'e', &value);
	while (add != NULL) {
		FUNC8(sc.environ, add);
		add = FUNC3(&value);
	}

	sc.idx = -1;
	sc.cwd = FUNC1(args, 'c');

	sc.flags = SPAWN_RESPAWN;
	if (FUNC2(args, 'k'))
		sc.flags |= SPAWN_KILL;

	if (FUNC12(&sc, &cause) == NULL) {
		FUNC5(item, "respawn window failed: %s", cause);
		FUNC9(cause);
		return (CMD_RETURN_ERROR);
	}

	FUNC11(wl->window);

	FUNC7(sc.environ);
	return (CMD_RETURN_NORMAL);
}