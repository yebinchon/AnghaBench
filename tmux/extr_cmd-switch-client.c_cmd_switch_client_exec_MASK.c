#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {int dummy; } ;
struct session {TYPE_2__* curw; int /*<<< orphan*/  last_attached_time; int /*<<< orphan*/  environ; int /*<<< orphan*/  options; } ;
struct key_table {int /*<<< orphan*/  references; } ;
struct TYPE_6__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__* shared; int /*<<< orphan*/ * client; TYPE_3__ target; } ;
struct cmd {struct args* args; } ;
struct client {struct session* session; struct session* last_session; int /*<<< orphan*/  environ; struct key_table* keytable; int /*<<< orphan*/  flags; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
typedef  enum cmd_find_type { ____Placeholder_cmd_find_type } cmd_find_type ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  current; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_READONLY ; 
 int CMDQ_SHARED_REPEAT ; 
 int CMD_FIND_PANE ; 
 int CMD_FIND_PREFER_UNATTACHED ; 
 int CMD_FIND_SESSION ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  WINLINK_ALERTFLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct session*) ; 
 char* FUNC1 (struct args*,char) ; 
 scalar_t__ FUNC2 (struct args*,char) ; 
 struct client* FUNC3 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct session*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*,struct cmdq_item*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct key_table* FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct key_table*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct client*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct client*) ; 
 int /*<<< orphan*/  FUNC16 (struct window*) ; 
 scalar_t__ FUNC17 (struct session*) ; 
 struct session* FUNC18 (struct session*) ; 
 struct session* FUNC19 (struct session*) ; 
 int /*<<< orphan*/  FUNC20 (struct session*,struct winlink*) ; 
 int /*<<< orphan*/  FUNC21 (struct session*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct client*) ; 
 size_t FUNC23 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct client*) ; 
 scalar_t__ FUNC25 (struct window*) ; 
 scalar_t__ FUNC26 (struct window*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (struct window*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC28 (struct window*,struct window_pane*,int) ; 

__attribute__((used)) static enum cmd_retval
FUNC29(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	const char		*tflag = FUNC1(args, 't');
	enum cmd_find_type	 type;
	int			 flags;
	struct client		*c;
	struct session		*s;
	struct winlink		*wl;
	struct window		*w;
	struct window_pane	*wp;
	const char		*tablename;
	struct key_table	*table;

	if ((c = FUNC3(item, FUNC1(args, 'c'), 0)) == NULL)
		return (CMD_RETURN_ERROR);

	if (tflag != NULL && tflag[FUNC23(tflag, ":.%")] != '\0') {
		type = CMD_FIND_PANE;
		flags = 0;
	} else {
		type = CMD_FIND_SESSION;
		flags = CMD_FIND_PREFER_UNATTACHED;
	}
	if (FUNC5(&item->target, item, tflag, type, flags) != 0)
		return (CMD_RETURN_ERROR);
	s = item->target.s;
	wl = item->target.wl;
	w = wl->window;
	wp = item->target.wp;

	if (FUNC2(args, 'r'))
		c->flags ^= CLIENT_READONLY;

	tablename = FUNC1(args, 'T');
	if (tablename != NULL) {
		table = FUNC9(tablename, 0);
		if (table == NULL) {
			FUNC6(item, "table %s doesn't exist", tablename);
			return (CMD_RETURN_ERROR);
		}
		table->references++;
		FUNC10(c->keytable);
		c->keytable = table;
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC2(args, 'n')) {
		if ((s = FUNC18(c->session)) == NULL) {
			FUNC6(item, "can't find next session");
			return (CMD_RETURN_ERROR);
		}
	} else if (FUNC2(args, 'p')) {
		if ((s = FUNC19(c->session)) == NULL) {
			FUNC6(item, "can't find previous session");
			return (CMD_RETURN_ERROR);
		}
	} else if (FUNC2(args, 'l')) {
		if (c->last_session != NULL && FUNC17(c->last_session))
			s = c->last_session;
		else
			s = NULL;
		if (s == NULL) {
			FUNC6(item, "can't find last session");
			return (CMD_RETURN_ERROR);
		}
	} else {
		if (item->client == NULL)
			return (CMD_RETURN_NORMAL);
		if (wl != NULL && wp != NULL) {
			if (FUNC26(w, FUNC2(self->args, 'Z')))
				FUNC16(w);
			FUNC27(w, wp);
			FUNC28(w, wp, 1);
			if (FUNC25(w))
				FUNC16(w);
		}
		if (wl != NULL) {
			FUNC20(s, wl);
			FUNC4(&item->shared->current, s, 0);
		}
	}

	if (!FUNC2(args, 'E'))
		FUNC7(s->options, c->environ, s->environ);

	if (c->session != NULL && c->session != s)
		c->last_session = c->session;
	c->session = s;
	if (~item->shared->flags & CMDQ_SHARED_REPEAT)
		FUNC14(c, NULL);
	FUNC24(c);
	FUNC22(c);
	FUNC11("client-session-changed", c);
	FUNC21(s, NULL);
	FUNC8(&s->last_attached_time, NULL);

	FUNC12();
	FUNC13();
	FUNC15(c);
	s->curw->flags &= ~WINLINK_ALERTFLAGS;
	FUNC0(s);

	return (CMD_RETURN_NORMAL);
}