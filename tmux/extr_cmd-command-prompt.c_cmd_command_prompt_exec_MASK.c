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
struct cmd_command_prompt_cdata {int idx; int /*<<< orphan*/  flags; int /*<<< orphan*/ * next_input; int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * next_prompt; int /*<<< orphan*/ * prompts; int /*<<< orphan*/ * template; } ;
struct cmd {struct args* args; } ;
struct client {int /*<<< orphan*/ * prompt_string; } ;
struct args {scalar_t__ argc; char const** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  PROMPT_INCREMENTAL ; 
 int /*<<< orphan*/  PROMPT_NUMERIC ; 
 int /*<<< orphan*/  PROMPT_SINGLE ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_command_prompt_callback ; 
 int /*<<< orphan*/  cmd_command_prompt_free ; 
 struct client* FUNC2 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_command_prompt_cdata*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,...) ; 
 struct cmd_command_prompt_cdata* FUNC8 (int,int) ; 
 void* FUNC9 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC10(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	const char			*inputs, *prompts;
	struct cmd_command_prompt_cdata	*cdata;
	struct client			*c;
	char				*prompt, *ptr, *input = NULL;
	size_t				 n;

	if ((c = FUNC2(item, FUNC0(args, 't'), 0)) == NULL)
		return (CMD_RETURN_ERROR);

	if (c->prompt_string != NULL)
		return (CMD_RETURN_NORMAL);

	cdata = FUNC8(1, sizeof *cdata);

	cdata->inputs = NULL;
	cdata->next_input = NULL;

	cdata->prompts = NULL;
	cdata->next_prompt = NULL;

	cdata->template = NULL;
	cdata->idx = 1;

	if (args->argc != 0)
		cdata->template = FUNC9(args->argv[0]);
	else
		cdata->template = FUNC9("%1");

	if ((prompts = FUNC0(args, 'p')) != NULL)
		cdata->prompts = FUNC9(prompts);
	else if (args->argc != 0) {
		n = FUNC5(cdata->template, " ,");
		FUNC7(&cdata->prompts, "(%.*s) ", (int) n, cdata->template);
	} else
		cdata->prompts = FUNC9(":");

	/* Get first prompt. */
	cdata->next_prompt = cdata->prompts;
	ptr = FUNC6(&cdata->next_prompt, ",");
	if (prompts == NULL)
		prompt = FUNC9(ptr);
	else
		FUNC7(&prompt, "%s ", ptr);

	/* Get initial prompt input. */
	if ((inputs = FUNC0(args, 'I')) != NULL) {
		cdata->inputs = FUNC9(inputs);
		cdata->next_input = cdata->inputs;
		input = FUNC6(&cdata->next_input, ",");
	}

	if (FUNC1(args, '1'))
		cdata->flags |= PROMPT_SINGLE;
	else if (FUNC1(args, 'N'))
		cdata->flags |= PROMPT_NUMERIC;
	else if (FUNC1(args, 'i'))
		cdata->flags |= PROMPT_INCREMENTAL;
	FUNC4(c, prompt, input, cmd_command_prompt_callback,
	    cmd_command_prompt_free, cdata, cdata->flags);
	FUNC3(prompt);

	return (CMD_RETURN_NORMAL);
}