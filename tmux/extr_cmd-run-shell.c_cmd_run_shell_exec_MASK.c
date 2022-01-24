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
struct winlink {int dummy; } ;
struct window_pane {int id; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {int /*<<< orphan*/  client; TYPE_1__ target; } ;
struct cmd_run_shell_data {int wp_id; int /*<<< orphan*/  cmd; struct cmdq_item* item; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int CMD_RETURN_WAIT ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 struct client* FUNC1 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cmd_run_shell_callback ; 
 int /*<<< orphan*/  cmd_run_shell_free ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,int /*<<< orphan*/ ,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_run_shell_data*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,struct session*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_run_shell_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct session*) ; 
 struct cmd_run_shell_data* FUNC7 (int,int) ; 

__attribute__((used)) static enum cmd_retval
FUNC8(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	struct cmd_run_shell_data	*cdata;
	struct client			*c = FUNC1(item, NULL, 1);
	struct session			*s = item->target.s;
	struct winlink			*wl = item->target.wl;
	struct window_pane		*wp = item->target.wp;

	cdata = FUNC7(1, sizeof *cdata);
	cdata->cmd = FUNC3(item, args->argv[0], c, s, wl, wp);

	if (FUNC0(args, 't') && wp != NULL)
		cdata->wp_id = wp->id;
	else
		cdata->wp_id = -1;

	if (!FUNC0(args, 'b'))
		cdata->item = item;

	if (FUNC5(cdata->cmd, s, FUNC6(item->client, s), NULL,
	    cmd_run_shell_callback, cmd_run_shell_free, cdata, 0) == NULL) {
		FUNC2(item, "failed to run command: %s", cdata->cmd);
		FUNC4(cdata);
		return (CMD_RETURN_ERROR);
	}

	if (FUNC0(args, 'b'))
		return (CMD_RETURN_NORMAL);
	return (CMD_RETURN_WAIT);
}