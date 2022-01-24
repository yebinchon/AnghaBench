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
typedef  scalar_t__ u_int ;
struct winlink {int dummy; } ;
struct window_pane {int /*<<< orphan*/  modes; } ;
struct window_mode_entry {TYPE_2__* mode; scalar_t__ prefix; } ;
struct session {int /*<<< orphan*/  options; } ;
struct mouse_event {int /*<<< orphan*/  key; int /*<<< orphan*/  valid; } ;
struct cmd_find_state {struct winlink* wl; struct session* s; struct window_pane* wp; } ;
struct cmdq_item {int /*<<< orphan*/  client; TYPE_1__* shared; struct cmd_find_state target; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct client {int dummy; } ;
struct args {int argc; } ;
typedef  int /*<<< orphan*/  key_code ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int /*<<< orphan*/  (* command ) (struct window_mode_entry*,struct client*,struct session*,struct winlink*,struct args*,struct mouse_event*) ;} ;
struct TYPE_3__ {struct mouse_event mouse; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 scalar_t__ FUNC2 (struct args*,char,int,int /*<<< orphan*/ ,char**) ; 
 struct client* FUNC3 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 struct window_pane* FUNC4 (struct mouse_event*,struct session**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct client*,struct cmd_find_state*,struct cmdq_item*,int /*<<< orphan*/ ) ; 
 struct cmdq_item* FUNC6 (struct client*,struct cmd_find_state*,struct cmdq_item*,struct args*,int) ; 
 int /*<<< orphan*/  cmd_send_prefix_entry ; 
 int /*<<< orphan*/  FUNC7 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct window_pane*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct window_mode_entry*,struct client*,struct session*,struct winlink*,struct args*,struct mouse_event*) ; 
 int /*<<< orphan*/  FUNC12 (struct window_pane*,int /*<<< orphan*/ ,struct session*,struct winlink*,int /*<<< orphan*/ ,struct mouse_event*) ; 
 int /*<<< orphan*/  FUNC13 (struct window_pane*) ; 

__attribute__((used)) static enum cmd_retval
FUNC14(struct cmd *self, struct cmdq_item *item)
{
	struct args			*args = self->args;
	struct client			*c = FUNC3(item, NULL, 1);
	struct cmd_find_state		*fs = &item->target;
	struct window_pane		*wp = item->target.wp;
	struct session			*s = item->target.s;
	struct winlink			*wl = item->target.wl;
	struct mouse_event		*m = &item->shared->mouse;
	struct window_mode_entry	*wme = FUNC0(&wp->modes);
	int				 i;
	key_code			 key;
	u_int				 np = 1;
	char				*cause = NULL;

	if (FUNC1(args, 'N')) {
		np = FUNC2(args, 'N', 1, UINT_MAX, &cause);
		if (cause != NULL) {
			FUNC7(item, "repeat count %s", cause);
			FUNC8(cause);
			return (CMD_RETURN_ERROR);
		}
		if (wme != NULL && (FUNC1(args, 'X') || args->argc == 0)) {
			if (wme == NULL || wme->mode->command == NULL) {
				FUNC7(item, "not in a mode");
				return (CMD_RETURN_ERROR);
			}
			wme->prefix = np;
		}
	}

	if (FUNC1(args, 'X')) {
		if (wme == NULL || wme->mode->command == NULL) {
			FUNC7(item, "not in a mode");
			return (CMD_RETURN_ERROR);
		}
		if (!m->valid)
			m = NULL;
		wme->mode->command(wme, c, s, wl, args, m);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'M')) {
		wp = FUNC4(m, &s, NULL);
		if (wp == NULL) {
			FUNC7(item, "no mouse target");
			return (CMD_RETURN_ERROR);
		}
		FUNC12(wp, item->client, s, wl, m->key, m);
		return (CMD_RETURN_NORMAL);
	}

	if (self->entry == &cmd_send_prefix_entry) {
		if (FUNC1(args, '2'))
			key = FUNC10(s->options, "prefix2");
		else
			key = FUNC10(s->options, "prefix");
		FUNC5(c, fs, item, key);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'R')) {
		FUNC13(wp);
		FUNC9(wp, 1);
	}

	for (; np != 0; np--) {
		for (i = 0; i < args->argc; i++)
			item = FUNC6(c, fs, item, args, i);
	}

	return (CMD_RETURN_NORMAL);
}