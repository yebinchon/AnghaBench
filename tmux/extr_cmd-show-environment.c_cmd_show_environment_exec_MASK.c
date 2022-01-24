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
struct environ_entry {int dummy; } ;
struct environ {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s; } ;
struct cmdq_item {TYPE_2__ target; } ;
struct cmd {struct args* args; } ;
struct args {scalar_t__ argc; char const** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct environ* environ; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd*,struct cmdq_item*,struct environ_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,...) ; 
 struct environ_entry* FUNC4 (struct environ*,char const*) ; 
 struct environ_entry* FUNC5 (struct environ*) ; 
 struct environ_entry* FUNC6 (struct environ_entry*) ; 
 struct environ* global_environ ; 

__attribute__((used)) static enum cmd_retval
FUNC7(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct environ		*env;
	struct environ_entry	*envent;
	const char		*target;

	if ((target = FUNC0(args, 't')) != NULL) {
		if (item->target.s == NULL) {
			FUNC3(item, "no such session: %s", target);
			return (CMD_RETURN_ERROR);
		}
	}

	if (FUNC1(self->args, 'g'))
		env = global_environ;
	else {
		if (item->target.s == NULL) {
			target = FUNC0(args, 't');
			if (target != NULL)
				FUNC3(item, "no such session: %s", target);
			else
				FUNC3(item, "no current session");
			return (CMD_RETURN_ERROR);
		}
		env = item->target.s->environ;
	}

	if (args->argc != 0) {
		envent = FUNC4(env, args->argv[0]);
		if (envent == NULL) {
			FUNC3(item, "unknown variable: %s", args->argv[0]);
			return (CMD_RETURN_ERROR);
		}
		FUNC2(self, item, envent);
		return (CMD_RETURN_NORMAL);
	}

	envent = FUNC5(env);
	while (envent != NULL) {
		FUNC2(self, item, envent);
		envent = FUNC6(envent);
	}
	return (CMD_RETURN_NORMAL);
}