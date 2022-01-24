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
struct winlink {int /*<<< orphan*/  idx; struct window* window; } ;
struct window_pane {int /*<<< orphan*/  flags; int /*<<< orphan*/  options; struct window* window; } ;
struct window {int /*<<< orphan*/  options; struct client* latest; struct window_pane* active; int /*<<< orphan*/  panes; int /*<<< orphan*/  sy; int /*<<< orphan*/  sx; } ;
struct session {int /*<<< orphan*/  options; int /*<<< orphan*/  windows; } ;
struct TYPE_6__ {int idx; struct session* s; } ;
struct TYPE_5__ {struct window_pane* wp; struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_3__ target; TYPE_2__ source; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {struct cmd_find_state current; } ;

/* Variables and functions */
 char* BREAK_PANE_TEMPLATE ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  PANE_CHANGED ; 
 int /*<<< orphan*/  PANE_STYLECHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct args*,float) ; 
 scalar_t__ FUNC3 (struct args*,char) ; 
 struct client* FUNC4 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_find_state*,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct cmdq_item*,char*,char*) ; 
 char* FUNC8 (struct window*) ; 
 int /*<<< orphan*/  entry ; 
 char* FUNC9 (struct cmdq_item*,char const*,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC12 (struct window*,struct window_pane*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct session*) ; 
 int /*<<< orphan*/  FUNC17 (struct session*) ; 
 int /*<<< orphan*/  FUNC18 (struct window*) ; 
 struct winlink* FUNC19 (struct session*,struct window*,int,char**) ; 
 int /*<<< orphan*/  FUNC20 (struct session*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct window*) ; 
 struct window* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct window*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC24 (struct window*,char*) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static enum cmd_retval
FUNC26(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmd_find_state	*current = &item->shared->current;
	struct client		*c = FUNC4(item, NULL, 1);
	struct winlink		*wl = item->source.wl;
	struct session		*src_s = item->source.s;
	struct session		*dst_s = item->target.s;
	struct window_pane	*wp = item->source.wp;
	struct window		*w = wl->window;
	char			*name, *cause;
	int			 idx = item->target.idx;
	const char		*template;
	char			*cp;

	if (idx != -1 && FUNC25(&dst_s->windows, idx) != NULL) {
		FUNC6(item, "index %d already in use", idx);
		return (CMD_RETURN_ERROR);
	}

	if (FUNC21(w) == 1) {
		FUNC6(item, "can't break with only one pane");
		return (CMD_RETURN_ERROR);
	}
	FUNC18(w);

	FUNC1(&w->panes, wp, entry);
	FUNC23(w, wp);
	FUNC11(wp);

	w = wp->window = FUNC22(w->sx, w->sy);
	FUNC15(wp->options, w->options);
	wp->flags |= PANE_STYLECHANGED;
	FUNC0(&w->panes, wp, entry);
	w->active = wp;
	w->latest = c;

	if (!FUNC3(args, 'n')) {
		name = FUNC8(w);
		FUNC24(w, name);
		FUNC10(name);
	} else {
		FUNC24(w, FUNC2(args, 'n'));
		FUNC14(w->options, "automatic-rename", 0);
	}

	FUNC12(w, wp);
	wp->flags |= PANE_CHANGED;

	if (idx == -1)
		idx = -1 - FUNC13(dst_s->options, "base-index");
	wl = FUNC19(dst_s, w, idx, &cause); /* can't fail */
	if (!FUNC3(self->args, 'd')) {
		FUNC20(dst_s, wl->idx);
		FUNC5(current, dst_s, 0);
	}

	FUNC16(src_s);
	if (src_s != dst_s)
		FUNC16(dst_s);
	FUNC17(src_s);
	if (src_s != dst_s)
		FUNC17(dst_s);

	if (FUNC3(args, 'P')) {
		if ((template = FUNC2(args, 'F')) == NULL)
			template = BREAK_PANE_TEMPLATE;
		cp = FUNC9(item, template, c, dst_s, wl, wp);
		FUNC7(item, "%s", cp);
		FUNC10(cp);
	}
	return (CMD_RETURN_NORMAL);
}