#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct winlink {int dummy; } ;
struct session {int dummy; } ;
struct options_entry {int dummy; } ;
struct options {int dummy; } ;
struct cmd_find_state {struct winlink* wl; struct session* s; } ;
struct cmdq_item {struct cmd_find_state target; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct client {int dummy; } ;
struct args {scalar_t__ argc; int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int OPTIONS_TABLE_NONE ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 struct client* FUNC1 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct cmd*,struct cmdq_item*,int,struct options*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd*,struct cmdq_item*,struct options_entry*,int,int) ; 
 int /*<<< orphan*/  cmd_show_window_options_entry ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,char*) ; 
 char* FUNC5 (struct cmdq_item*,int /*<<< orphan*/ ,struct client*,struct session*,struct winlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct options_entry* FUNC7 (struct options*,char*) ; 
 struct options_entry* FUNC8 (struct options*,char*) ; 
 char* FUNC9 (char*,int*,int*) ; 
 int FUNC10 (struct args*,int,struct cmd_find_state*,struct options**,char**) ; 
 int FUNC11 (struct args*,int,char*,struct cmd_find_state*,struct options**,char**) ; 

__attribute__((used)) static enum cmd_retval
FUNC12(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	struct cmd_find_state		*fs = &item->target;
	struct client			*c = FUNC1(item, NULL, 1);
	struct session			*s = item->target.s;
	struct winlink			*wl = item->target.wl;
	struct options			*oo;
	char				*argument, *name = NULL, *cause;
	int				 window, idx, ambiguous, parent, scope;
	struct options_entry		*o;

	window = (self->entry == &cmd_show_window_options_entry);

	if (args->argc == 0) {
		scope = FUNC10(args, window, fs, &oo, &cause);
		if (scope == OPTIONS_TABLE_NONE) {
			if (FUNC0(args, 'q'))
				return (CMD_RETURN_NORMAL);
			FUNC4(item, "%s", cause);
			FUNC6(cause);
			return (CMD_RETURN_ERROR);
		}
		return (FUNC2(self, item, scope, oo));
	}
	argument = FUNC5(item, args->argv[0], c, s, wl, NULL);

	name = FUNC9(argument, &idx, &ambiguous);
	if (name == NULL) {
		if (FUNC0(args, 'q'))
			goto fail;
		if (ambiguous)
			FUNC4(item, "ambiguous option: %s", argument);
		else
			FUNC4(item, "invalid option: %s", argument);
		goto fail;
	}
	scope = FUNC11(args, window, name, fs, &oo, &cause);
	if (scope == OPTIONS_TABLE_NONE) {
		if (FUNC0(args, 'q'))
			goto fail;
		FUNC4(item, "%s", cause);
		FUNC6(cause);
		goto fail;
	}
	o = FUNC8(oo, name);
	if (FUNC0(args, 'A') && o == NULL) {
		o = FUNC7(oo, name);
		parent = 1;
	} else
		parent = 0;
	if (o != NULL)
		FUNC3(self, item, o, idx, parent);

	FUNC6(name);
	FUNC6(argument);
	return (CMD_RETURN_NORMAL);

fail:
	FUNC6(name);
	FUNC6(argument);
	return (CMD_RETURN_ERROR);
}