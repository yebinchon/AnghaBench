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
struct TYPE_4__ {int /*<<< orphan*/  grid; } ;
struct window_pane {TYPE_2__ base; } ;
struct TYPE_3__ {struct window_pane* wp; } ;
struct cmdq_item {struct client* client; TYPE_1__ target; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct client {int flags; int /*<<< orphan*/  stdout_data; int /*<<< orphan*/ * session; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CLIENT_CONTROL ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 char* FUNC2 (struct args*,struct cmdq_item*,struct window_pane*,size_t*) ; 
 char* FUNC3 (struct args*,struct window_pane*,size_t*) ; 
 int /*<<< orphan*/  cmd_clear_history_entry ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,size_t,char const*,char**) ; 
 int /*<<< orphan*/  FUNC9 (struct client*) ; 
 int /*<<< orphan*/  FUNC10 (struct window_pane*) ; 

__attribute__((used)) static enum cmd_retval
FUNC11(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct client		*c;
	struct window_pane	*wp = item->target.wp;
	char			*buf, *cause;
	const char		*bufname;
	size_t			 len;

	if (self->entry == &cmd_clear_history_entry) {
		FUNC10(wp);
		FUNC7(wp->base.grid);
		return (CMD_RETURN_NORMAL);
	}

	len = 0;
	if (FUNC1(args, 'P'))
		buf = FUNC3(args, wp, &len);
	else
		buf = FUNC2(args, item, wp, &len);
	if (buf == NULL)
		return (CMD_RETURN_ERROR);

	if (FUNC1(args, 'p')) {
		c = item->client;
		if (c == NULL ||
		    (c->session != NULL && !(c->flags & CLIENT_CONTROL))) {
			FUNC4(item, "can't write to stdout");
			FUNC6(buf);
			return (CMD_RETURN_ERROR);
		}
		FUNC5(c->stdout_data, buf, len);
		FUNC6(buf);
		if (FUNC1(args, 'P') && len > 0)
		    FUNC5(c->stdout_data, "\n", 1);
		FUNC9(c);
	} else {
		bufname = NULL;
		if (FUNC1(args, 'b'))
			bufname = FUNC0(args, 'b');

		if (FUNC8(buf, len, bufname, &cause) != 0) {
			FUNC4(item, "%s", cause);
			FUNC6(cause);
			FUNC6(buf);
			return (CMD_RETURN_ERROR);
		}
	}

	return (CMD_RETURN_NORMAL);
}