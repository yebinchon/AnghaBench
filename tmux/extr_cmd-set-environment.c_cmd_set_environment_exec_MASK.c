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
struct environ {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s; } ;
struct cmdq_item {TYPE_2__ target; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; int argc; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct environ* environ; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct environ*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct environ*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct environ*,char const*) ; 
 struct environ* global_environ ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 

__attribute__((used)) static enum cmd_retval
FUNC7(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	struct environ	*env;
	const char	*name, *value, *target;

	name = args->argv[0];
	if (*name == '\0') {
		FUNC2(item, "empty variable name");
		return (CMD_RETURN_ERROR);
	}
	if (FUNC6(name, '=') != NULL) {
		FUNC2(item, "variable name contains =");
		return (CMD_RETURN_ERROR);
	}

	if (args->argc < 2)
		value = NULL;
	else
		value = args->argv[1];

	if (FUNC1(self->args, 'g'))
		env = global_environ;
	else {
		if (item->target.s == NULL) {
			target = FUNC0(args, 't');
			if (target != NULL)
				FUNC2(item, "no such session: %s", target);
			else
				FUNC2(item, "no current session");
			return (CMD_RETURN_ERROR);
		}
		env = item->target.s->environ;
	}

	if (FUNC1(self->args, 'u')) {
		if (value != NULL) {
			FUNC2(item, "can't specify a value with -u");
			return (CMD_RETURN_ERROR);
		}
		FUNC5(env, name);
	} else if (FUNC1(self->args, 'r')) {
		if (value != NULL) {
			FUNC2(item, "can't specify a value with -r");
			return (CMD_RETURN_ERROR);
		}
		FUNC3(env, name);
	} else {
		if (value == NULL) {
			FUNC2(item, "no value specified");
			return (CMD_RETURN_ERROR);
		}
		FUNC4(env, name, "%s", value);
	}

	return (CMD_RETURN_NORMAL);
}