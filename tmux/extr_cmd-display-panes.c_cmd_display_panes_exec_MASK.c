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
typedef  int /*<<< orphan*/  u_int ;
struct session {int /*<<< orphan*/  options; } ;
struct cmdq_item {int dummy; } ;
struct cmd_display_panes_data {struct cmdq_item* item; void* command; } ;
struct cmd {struct args* args; } ;
struct client {int /*<<< orphan*/ * overlay_draw; struct session* session; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int CMD_RETURN_WAIT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct args*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  cmd_display_panes_draw ; 
 int /*<<< orphan*/  cmd_display_panes_free ; 
 int /*<<< orphan*/  cmd_display_panes_key ; 
 struct client* FUNC3 (struct cmdq_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_display_panes_data*) ; 
 struct cmd_display_panes_data* FUNC8 (int) ; 
 void* FUNC9 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC10(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	struct client			*c;
	struct session			*s;
	u_int		 		 delay;
	char				*cause;
	struct cmd_display_panes_data	*cdata;

	if ((c = FUNC3(item, FUNC0(args, 't'), 0)) == NULL)
		return (CMD_RETURN_ERROR);
	s = c->session;

	if (c->overlay_draw != NULL)
		return (CMD_RETURN_NORMAL);

	if (FUNC1(args, 'd')) {
		delay = FUNC2(args, 'd', 0, UINT_MAX, &cause);
		if (cause != NULL) {
			FUNC4(item, "delay %s", cause);
			FUNC5(cause);
			return (CMD_RETURN_ERROR);
		}
	} else
		delay = FUNC6(s->options, "display-panes-time");

	cdata = FUNC8(sizeof *cdata);
	if (args->argc != 0)
		cdata->command = FUNC9(args->argv[0]);
	else
		cdata->command = FUNC9("select-pane -t '%%'");
	if (FUNC1(args, 'b'))
		cdata->item = NULL;
	else
		cdata->item = item;

	FUNC7(c, delay, cmd_display_panes_draw,
	    cmd_display_panes_key, cmd_display_panes_free, cdata);

	if (FUNC1(args, 'b'))
		return (CMD_RETURN_NORMAL);
	return (CMD_RETURN_WAIT);
}