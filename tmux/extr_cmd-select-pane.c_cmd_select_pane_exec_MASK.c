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
struct window_pane {int flags; int /*<<< orphan*/  window; int /*<<< orphan*/  base; int /*<<< orphan*/  options; } ;
struct window {struct window_pane* active; struct window_pane* last; } ;
struct style {int dummy; } ;
struct session {int dummy; } ;
struct options_entry {int dummy; } ;
struct TYPE_5__ {struct window_pane* wp; struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {int dummy; } ;
struct cmd {struct args* args; int /*<<< orphan*/ * entry; } ;
struct client {int dummy; } ;
struct args {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_6__ {struct window_pane* wp; } ;
struct TYPE_4__ {struct cmd_find_state current; } ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int PANE_INPUTOFF ; 
 int PANE_REDRAW ; 
 int PANE_STYLECHANGED ; 
 struct window_pane* FUNC0 (struct window_pane*,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC1 (struct window_pane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct args*,char) ; 
 int FUNC3 (struct args*,char) ; 
 struct client* FUNC4 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_find_state*,struct winlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_find_state*,struct winlink*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_last_pane_entry ; 
 int /*<<< orphan*/  FUNC7 (struct window*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct session*,struct cmdq_item*,struct cmd_find_state*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 char* FUNC11 (struct cmdq_item*,char*,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_3__ marked_pane ; 
 struct style* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 struct options_entry* FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC18 (struct window*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct style*) ; 
 int FUNC23 (struct window*) ; 
 struct window_pane* FUNC24 (struct window_pane*) ; 
 struct window_pane* FUNC25 (struct window_pane*) ; 
 struct window_pane* FUNC26 (struct window_pane*) ; 
 struct window_pane* FUNC27 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC28 (struct window_pane*) ; 
 int /*<<< orphan*/  window_panes ; 
 scalar_t__ FUNC29 (struct window*) ; 
 scalar_t__ FUNC30 (struct window*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct window*,struct window_pane*) ; 
 scalar_t__ FUNC32 (struct window*,struct window_pane*,int) ; 

__attribute__((used)) static enum cmd_retval
FUNC33(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmd_find_state	*current = &item->shared->current;
	struct client		*c = FUNC4(item, NULL, 1);
	struct winlink		*wl = item->target.wl;
	struct window		*w = wl->window;
	struct session		*s = item->target.s;
	struct window_pane	*wp = item->target.wp, *lastwp, *markedwp;
	char			*pane_title;
	const char		*style;
	struct style		*sy;
	struct options_entry	*o;

	if (self->entry == &cmd_last_pane_entry || FUNC3(args, 'l')) {
		lastwp = w->last;
		if (lastwp == NULL && FUNC23(w) == 2) {
			lastwp = FUNC1(w->active, window_panes, entry);
			if (lastwp == NULL)
				lastwp = FUNC0(w->active, entry);
		}
		if (lastwp == NULL) {
			FUNC8(item, "no last pane");
			return (CMD_RETURN_ERROR);
		}
		if (FUNC3(self->args, 'e'))
			lastwp->flags &= ~PANE_INPUTOFF;
		else if (FUNC3(self->args, 'd'))
			lastwp->flags |= PANE_INPUTOFF;
		else {
			if (FUNC30(w, FUNC3(self->args, 'Z')))
				FUNC18(w);
			FUNC31(w, lastwp);
			if (FUNC32(w, lastwp, 1)) {
				FUNC5(current, wl, 0);
				FUNC7(w);
			}
			if (FUNC29(w))
				FUNC18(w);
		}
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC3(args, 'm') || FUNC3(args, 'M')) {
		if (FUNC3(args, 'm') && !FUNC28(wp))
			return (CMD_RETURN_NORMAL);
		lastwp = marked_pane.wp;

		if (FUNC3(args, 'M') || FUNC17(s, wl, wp))
			FUNC16();
		else
			FUNC20(s, wl, wp);
		markedwp = marked_pane.wp;

		if (lastwp != NULL) {
			FUNC19(lastwp->window);
			FUNC21(lastwp->window);
		}
		if (markedwp != NULL) {
			FUNC19(markedwp->window);
			FUNC21(markedwp->window);
		}
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC3(self->args, 'P') || FUNC3(self->args, 'g')) {
		if ((style = FUNC2(args, 'P')) != NULL) {
			o = FUNC14(wp->options, "window-style", 0,
			    style);
			if (o == NULL) {
				FUNC8(item, "bad style: %s", style);
				return (CMD_RETURN_ERROR);
			}
			FUNC14(wp->options, "window-active-style", 0,
			    style);
			wp->flags |= (PANE_REDRAW|PANE_STYLECHANGED);
		}
		if (FUNC3(self->args, 'g')) {
			sy = FUNC13(wp->options, "window-style");
			FUNC10(item, "%s", FUNC22(sy));
		}
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC3(self->args, 'L')) {
		FUNC30(w, 1);
		wp = FUNC25(wp);
		FUNC29(w);
	} else if (FUNC3(self->args, 'R')) {
		FUNC30(w, 1);
		wp = FUNC26(wp);
		FUNC29(w);
	} else if (FUNC3(self->args, 'U')) {
		FUNC30(w, 1);
		wp = FUNC27(wp);
		FUNC29(w);
	} else if (FUNC3(self->args, 'D')) {
		FUNC30(w, 1);
		wp = FUNC24(wp);
		FUNC29(w);
	}
	if (wp == NULL)
		return (CMD_RETURN_NORMAL);

	if (FUNC3(self->args, 'e')) {
		wp->flags &= ~PANE_INPUTOFF;
		return (CMD_RETURN_NORMAL);
	}
	if (FUNC3(self->args, 'd')) {
		wp->flags |= PANE_INPUTOFF;
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC3(self->args, 'T')) {
		pane_title = FUNC11(item, FUNC2(self->args, 'T'),
		    c, s, wl, wp);
		FUNC15(&wp->base, pane_title);
		FUNC21(wp->window);
		FUNC12(pane_title);
		return (CMD_RETURN_NORMAL);
	}

	if (wp == w->active)
		return (CMD_RETURN_NORMAL);
	if (FUNC30(w, FUNC3(self->args, 'Z')))
		FUNC18(w);
	FUNC31(w, wp);
	if (FUNC32(w, wp, 1)) {
		FUNC6(current, wl, wp, 0);
		FUNC9(s, item, current, "after-select-pane");
		FUNC7(w);
	}
	if (FUNC29(w))
		FUNC18(w);

	return (CMD_RETURN_NORMAL);
}