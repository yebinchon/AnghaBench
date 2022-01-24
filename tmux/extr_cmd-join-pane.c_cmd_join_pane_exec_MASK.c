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
struct winlink {int idx; struct window* window; } ;
struct window_pane {int sy; int sx; int /*<<< orphan*/  flags; int /*<<< orphan*/  options; struct window* window; } ;
struct window {int /*<<< orphan*/  panes; int /*<<< orphan*/  options; } ;
struct session {int dummy; } ;
struct layout_cell {int dummy; } ;
struct TYPE_6__ {struct window_pane* wp; struct winlink* wl; } ;
struct TYPE_5__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_3__ source; TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {int /*<<< orphan*/ * entry; struct args* args; } ;
struct args {int dummy; } ;
typedef  enum layout_type { ____Placeholder_layout_type } layout_type ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {struct cmd_find_state current; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int INT_MAX ; 
 int LAYOUT_LEFTRIGHT ; 
 int LAYOUT_TOPBOTTOM ; 
 int /*<<< orphan*/  PANE_STYLECHANGED ; 
 int SPAWN_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct window_pane*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct window_pane*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct args*,char) ; 
 scalar_t__ FUNC3 (struct args*,char) ; 
 int FUNC4 (struct args*,char,int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_find_state*,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_join_pane_entry ; 
 int /*<<< orphan*/  FUNC6 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct layout_cell*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC9 (struct window_pane*) ; 
 struct layout_cell* FUNC10 (struct window_pane*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct window*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct window*) ; 
 int /*<<< orphan*/  FUNC15 (struct session*) ; 
 int /*<<< orphan*/  FUNC16 (struct window*) ; 
 int /*<<< orphan*/  FUNC17 (struct session*) ; 
 int /*<<< orphan*/  FUNC18 (struct window*) ; 
 int /*<<< orphan*/  FUNC19 (struct session*,int) ; 
 size_t FUNC20 (char const*) ; 
 int FUNC21 (char*,int /*<<< orphan*/ ,int,char const**) ; 
 scalar_t__ FUNC22 (struct window*) ; 
 int /*<<< orphan*/  FUNC23 (struct window*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC24 (struct window*,struct window_pane*,int) ; 
 char* FUNC25 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC26(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmd_find_state	*current = &item->shared->current;
	struct session		*dst_s;
	struct winlink		*src_wl, *dst_wl;
	struct window		*src_w, *dst_w;
	struct window_pane	*src_wp, *dst_wp;
	char			*cause, *copy;
	const char		*errstr, *p;
	size_t			 plen;
	int			 size, percentage, dst_idx, not_same_window;
	int			 flags;
	enum layout_type	 type;
	struct layout_cell	*lc;

	if (self->entry == &cmd_join_pane_entry)
		not_same_window = 1;
	else
		not_same_window = 0;

	dst_s = item->target.s;
	dst_wl = item->target.wl;
	dst_wp = item->target.wp;
	dst_w = dst_wl->window;
	dst_idx = dst_wl->idx;
	FUNC18(dst_w);

	src_wl = item->source.wl;
	src_wp = item->source.wp;
	src_w = src_wl->window;
	FUNC18(src_w);

	if (not_same_window && src_w == dst_w) {
		FUNC6(item, "can't join a pane to its own window");
		return (CMD_RETURN_ERROR);
	}
	if (!not_same_window && src_wp == dst_wp) {
		FUNC6(item, "source and target panes must be different");
		return (CMD_RETURN_ERROR);
	}

	type = LAYOUT_TOPBOTTOM;
	if (FUNC3(args, 'h'))
		type = LAYOUT_LEFTRIGHT;

	size = -1;
	if ((p = FUNC2(args, 'l')) != NULL) {
		plen = FUNC20(p);
		if (p[plen - 1] == '%') {
			copy = FUNC25(p);
			copy[plen - 1] = '\0';
			percentage = FUNC21(copy, 0, INT_MAX, &errstr);
			FUNC7(copy);
			if (errstr != NULL) {
				FUNC6(item, "percentage %s", errstr);
				return (CMD_RETURN_ERROR);
			}
			if (type == LAYOUT_TOPBOTTOM)
				size = (dst_wp->sy * percentage) / 100;
			else
				size = (dst_wp->sx * percentage) / 100;
		} else {
			size = FUNC4(args, 'l', 0, INT_MAX, &cause);
			if (cause != NULL) {
				FUNC6(item, "size %s", cause);
				FUNC7(cause);
				return (CMD_RETURN_ERROR);
			}
		}
	} else if (FUNC3(args, 'p')) {
		percentage = FUNC4(args, 'p', 0, 100, &cause);
		if (cause != NULL) {
			FUNC6(item, "percentage %s", cause);
			FUNC7(cause);
			return (CMD_RETURN_ERROR);
		}
		if (type == LAYOUT_TOPBOTTOM)
			size = (dst_wp->sy * percentage) / 100;
		else
			size = (dst_wp->sx * percentage) / 100;
	}
	if (FUNC3(args, 'b'))
		flags = SPAWN_BEFORE;
	else
		flags = 0;
	lc = FUNC10(dst_wp, type, size, flags);
	if (lc == NULL) {
		FUNC6(item, "create pane failed: pane too small");
		return (CMD_RETURN_ERROR);
	}

	FUNC9(src_wp);

	FUNC23(src_w, src_wp);
	FUNC1(&src_w->panes, src_wp, entry);

	src_wp->window = dst_w;
	FUNC12(src_wp->options, dst_w->options);
	src_wp->flags |= PANE_STYLECHANGED;
	FUNC0(&dst_w->panes, dst_wp, src_wp, entry);
	FUNC8(lc, src_wp);

	FUNC13();

	FUNC16(src_w);
	FUNC16(dst_w);

	if (!FUNC3(args, 'd')) {
		FUNC24(dst_w, src_wp, 1);
		FUNC19(dst_s, dst_idx);
		FUNC5(current, dst_s, 0);
		FUNC15(dst_s);
	} else
		FUNC17(dst_s);

	if (FUNC22(src_w) == 0)
		FUNC14(src_w);
	else
		FUNC11("window-layout-changed", src_w);
	FUNC11("window-layout-changed", dst_w);

	return (CMD_RETURN_NORMAL);
}