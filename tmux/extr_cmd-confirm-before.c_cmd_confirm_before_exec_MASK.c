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
struct cmdq_item {int dummy; } ;
struct cmd_confirm_before_data {void* cmd; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  PROMPT_SINGLE ; 
 char* FUNC0 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_confirm_before_callback ; 
 int /*<<< orphan*/  cmd_confirm_before_free ; 
 struct client* FUNC1 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_confirm_before_data*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,char const*) ; 
 struct cmd_confirm_before_data* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum cmd_retval
FUNC8(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	struct cmd_confirm_before_data	*cdata;
	struct client			*c;
	char				*cmd, *copy, *new_prompt, *ptr;
	const char			*prompt;

	if ((c = FUNC1(item, FUNC0(args, 't'), 0)) == NULL)
		return (CMD_RETURN_ERROR);

	if ((prompt = FUNC0(args, 'p')) != NULL)
		FUNC5(&new_prompt, "%s ", prompt);
	else {
		ptr = copy = FUNC7(args->argv[0]);
		cmd = FUNC4(&ptr, " \t");
		FUNC5(&new_prompt, "Confirm '%s'? (y/n) ", cmd);
		FUNC2(copy);
	}

	cdata = FUNC6(sizeof *cdata);
	cdata->cmd = FUNC7(args->argv[0]);

	FUNC3(c, new_prompt, NULL,
	    cmd_confirm_before_callback, cmd_confirm_before_free, cdata,
	    PROMPT_SINGLE);

	FUNC2(new_prompt);
	return (CMD_RETURN_NORMAL);
}