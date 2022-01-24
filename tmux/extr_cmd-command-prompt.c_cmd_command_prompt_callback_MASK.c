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
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;
struct cmd_command_prompt_cdata {int flags; char* template; int /*<<< orphan*/  idx; int /*<<< orphan*/  next_input; int /*<<< orphan*/  next_prompt; } ;
struct client {scalar_t__ prompt_inputcb; } ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int PROMPT_INCREMENTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,struct cmdq_item*) ; 
 struct cmdq_item* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cmdq_item* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct client*,char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,char*) ; 

__attribute__((used)) static int
FUNC10(struct client *c, void *data, const char *s,
    int done)
{
	struct cmd_command_prompt_cdata	*cdata = data;
	struct cmdq_item		*new_item;
	char				*new_template, *prompt, *ptr;
	char				*input = NULL;
	struct cmd_parse_result		*pr;

	if (s == NULL)
		return (0);
	if (done && (cdata->flags & PROMPT_INCREMENTAL))
		return (0);

	new_template = FUNC2(cdata->template, s, cdata->idx);
	if (done) {
		FUNC6(cdata->template);
		cdata->template = new_template;
	}

	/*
	 * Check if there are more prompts; if so, get its respective input
	 * and update the prompt data.
	 */
	if (done && (ptr = FUNC8(&cdata->next_prompt, ",")) != NULL) {
		FUNC9(&prompt, "%s ", ptr);
		input = FUNC8(&cdata->next_input, ",");
		FUNC7(c, prompt, input);

		FUNC6(prompt);
		cdata->idx++;
		return (1);
	}

	pr = FUNC1(new_template, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		new_item = NULL;
		break;
	case CMD_PARSE_ERROR:
		new_item = FUNC5(pr->error);
		FUNC6(pr->error);
		FUNC3(c, new_item);
		break;
	case CMD_PARSE_SUCCESS:
		new_item = FUNC4(pr->cmdlist, NULL, NULL, 0);
		FUNC0(pr->cmdlist);
		FUNC3(c, new_item);
		break;
	}

	if (!done)
		FUNC6(new_template);
	if (c->prompt_inputcb != cmd_command_prompt_callback)
		return (1);
	return (0);
}