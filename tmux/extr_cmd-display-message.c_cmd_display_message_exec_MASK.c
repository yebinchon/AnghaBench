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
struct window_pane {int dummy; } ;
struct session {int dummy; } ;
struct format_tree {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {int /*<<< orphan*/  client; TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {struct session* session; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int CMD_RETURN_WAIT ; 
 char* DISPLAY_MESSAGE_TEMPLATE ; 
 int /*<<< orphan*/  FORMAT_NONE ; 
 int FORMAT_VERBOSE ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int /*<<< orphan*/  cmd_display_message_each ; 
 struct client* FUNC2 (struct session*) ; 
 struct client* FUNC3 (struct cmdq_item*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_item*,char*,char*) ; 
 struct format_tree* FUNC6 (int /*<<< orphan*/ ,struct cmdq_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct format_tree*,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC8 (struct format_tree*,int /*<<< orphan*/ ,struct cmdq_item*) ; 
 char* FUNC9 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct client*,char*,char*) ; 
 scalar_t__ FUNC13 (struct window_pane*,struct cmdq_item*,char**) ; 

__attribute__((used)) static enum cmd_retval
FUNC14(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct client		*c, *target_c;
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	struct window_pane	*wp = item->target.wp;
	const char		*template;
	char			*msg, *cause;
	struct format_tree	*ft;
	int			 flags;

	if (FUNC1(args, 'I')) {
		if (FUNC13(wp, item, &cause) != 0) {
			FUNC4(item, "%s", cause);
			FUNC11(cause);
			return (CMD_RETURN_ERROR);
		}
		return (CMD_RETURN_WAIT);
	}

	if (FUNC1(args, 'F') && args->argc != 0) {
		FUNC4(item, "only one of -F or argument must be given");
		return (CMD_RETURN_ERROR);
	}

	template = FUNC0(args, 'F');
	if (args->argc != 0)
		template = args->argv[0];
	if (template == NULL)
		template = DISPLAY_MESSAGE_TEMPLATE;

	/*
	 * -c is intended to be the client where the message should be
	 * displayed if -p is not given. But it makes sense to use it for the
	 * formats too, assuming it matches the session. If it doesn't, use the
	 * best client for the session.
	 */
	c = FUNC3(item, FUNC0(args, 'c'), 1);
	if (c != NULL && c->session == s)
		target_c = c;
	else
		target_c = FUNC2(s);
	if (FUNC1(self->args, 'v'))
		flags = FORMAT_VERBOSE;
	else
		flags = 0;
	ft = FUNC6(item->client, item, FORMAT_NONE, flags);
	FUNC7(ft, target_c, s, wl, wp);

	if (FUNC1(args, 'a')) {
		FUNC8(ft, cmd_display_message_each, item);
		return (CMD_RETURN_NORMAL);
	}

	msg = FUNC9(ft, template);
	if (FUNC1(self->args, 'p'))
		FUNC5(item, "%s", msg);
	else if (c != NULL)
		FUNC12(c, "%s", msg);
	FUNC11(msg);

	FUNC10(ft);

	return (CMD_RETURN_NORMAL);
}