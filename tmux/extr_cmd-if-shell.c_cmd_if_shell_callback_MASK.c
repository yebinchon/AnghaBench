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
struct mouse_event {int dummy; } ;
struct job {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; int /*<<< orphan*/  cmdlist; int /*<<< orphan*/  error; } ;
struct cmd_if_shell_data {char* cmd_else; char* cmd_if; int /*<<< orphan*/ * item; int /*<<< orphan*/  input; struct mouse_event mouse; struct client* client; } ;
struct client {int dummy; } ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,struct cmdq_item*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct cmdq_item* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mouse_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct cmdq_item*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct cmd_if_shell_data* FUNC10 (struct job*) ; 
 int FUNC11 (struct job*) ; 

__attribute__((used)) static void
FUNC12(struct job *job)
{
	struct cmd_if_shell_data	*cdata = FUNC10(job);
	struct client			*c = cdata->client;
	struct mouse_event		*m = &cdata->mouse;
	struct cmdq_item		*new_item = NULL;
	char				*cmd;
	int				 status;
	struct cmd_parse_result		*pr;

	status = FUNC11(job);
	if (!FUNC1(status) || FUNC0(status) != 0)
		cmd = cdata->cmd_else;
	else
		cmd = cdata->cmd_if;
	if (cmd == NULL)
		goto out;

	pr = FUNC3(cmd, &cdata->input);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		break;
	case CMD_PARSE_ERROR:
		if (cdata->item != NULL)
		       FUNC6(cdata->item, "%s", pr->error);
		FUNC9(pr->error);
		break;
	case CMD_PARSE_SUCCESS:
		new_item = FUNC7(pr->cmdlist, NULL, m, 0);
		FUNC2(pr->cmdlist);
		break;
	}
	if (new_item != NULL) {
		if (cdata->item == NULL)
			FUNC4(c, new_item);
		else
			FUNC8(cdata->item, new_item);
	}

out:
	if (cdata->item != NULL)
		FUNC5(cdata->item);
}