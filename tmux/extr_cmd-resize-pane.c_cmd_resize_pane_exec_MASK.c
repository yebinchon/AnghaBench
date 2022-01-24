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
typedef  int u_int ;
struct winlink {struct window* window; } ;
struct window_pane {int dummy; } ;
struct window {int flags; int sx; int sy; } ;
struct session {int dummy; } ;
struct cmdq_shared {int /*<<< orphan*/  mouse; } ;
struct TYPE_3__ {struct session* s; struct winlink* wl; struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; struct client* client; struct cmdq_shared* shared; } ;
struct cmd {struct args* args; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mouse_drag_update ) (struct client*,int /*<<< orphan*/ *) ;} ;
struct client {TYPE_2__ tty; struct session* session; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int INT_MAX ; 
 int /*<<< orphan*/  LAYOUT_LEFTRIGHT ; 
 int /*<<< orphan*/  LAYOUT_TOPBOTTOM ; 
 int PANE_MINIMUM ; 
 int WINDOW_ZOOMED ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 int FUNC2 (struct args*,char,int,int,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct session**) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct window_pane*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct window_pane*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct window*) ; 
 int /*<<< orphan*/  FUNC10 (struct window*) ; 
 int /*<<< orphan*/  FUNC11 (struct window*) ; 
 size_t FUNC12 (char const*) ; 
 void* FUNC13 (char*,int,int,char const**) ; 
 int /*<<< orphan*/  FUNC14 (struct window*) ; 
 int /*<<< orphan*/  FUNC15 (struct window_pane*) ; 
 char* FUNC16 (char const*) ; 

__attribute__((used)) static enum cmd_retval
FUNC17(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct cmdq_shared	*shared = item->shared;
	struct window_pane	*wp = item->target.wp;
	struct winlink		*wl = item->target.wl;
	struct window		*w = wl->window;
	struct client		*c = item->client;
	struct session		*s = item->target.s;
	const char	       	*errstr, *p;
	char			*cause, *copy;
	u_int			 adjust;
	int			 x, y, percentage;
	size_t			 plen;

	if (FUNC1(args, 'M')) {
		if (FUNC3(&shared->mouse, &s) == NULL)
			return (CMD_RETURN_NORMAL);
		if (c == NULL || c->session != s)
			return (CMD_RETURN_NORMAL);
		c->tty.mouse_drag_update = cmd_resize_pane_mouse_update;
		FUNC4(c, &shared->mouse);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'Z')) {
		if (w->flags & WINDOW_ZOOMED)
			FUNC14(w);
		else
			FUNC15(wp);
		FUNC9(w);
		FUNC10(w);
		return (CMD_RETURN_NORMAL);
	}
	FUNC11(w);

	if (args->argc == 0)
		adjust = 1;
	else {
		adjust = FUNC13(args->argv[0], 1, INT_MAX, &errstr);
		if (errstr != NULL) {
			FUNC5(item, "adjustment %s", errstr);
			return (CMD_RETURN_ERROR);
		}
	}

	if ((p = FUNC0(args, 'x')) != NULL) {
		plen = FUNC12(p);
		if (p[plen - 1] == '%') {
			copy = FUNC16(p);
			copy[plen - 1] = '\0';
			percentage = FUNC13(copy, 0, INT_MAX, &errstr);
			FUNC6(copy);
			if (errstr != NULL) {
				FUNC5(item, "width %s", errstr);
				return (CMD_RETURN_ERROR);
			}
			x = (w->sx * percentage) / 100;
			if (x < PANE_MINIMUM)
				x = PANE_MINIMUM;
			if (x > INT_MAX)
				x = INT_MAX;
		} else {
			x = FUNC2(args, 'x', PANE_MINIMUM, INT_MAX,
			    &cause);
			if (cause != NULL) {
				FUNC5(item, "width %s", cause);
				FUNC6(cause);
				return (CMD_RETURN_ERROR);
			}
		}
		FUNC8(wp, LAYOUT_LEFTRIGHT, x);
	}
	if ((p = FUNC0(args, 'y')) != NULL) {
		plen = FUNC12(p);
		if (p[plen - 1] == '%') {
			copy = FUNC16(p);
			copy[plen - 1] = '\0';
			percentage = FUNC13(copy, 0, INT_MAX, &errstr);
			FUNC6(copy);
			if (errstr != NULL) {
				FUNC5(item, "height %s", errstr);
				return (CMD_RETURN_ERROR);
			}
			y = (w->sy * percentage) / 100;
			if (y < PANE_MINIMUM)
				y = PANE_MINIMUM;
			if (y > INT_MAX)
				y = INT_MAX;
		}
		else {
			y = FUNC2(args, 'y', PANE_MINIMUM, INT_MAX,
			    &cause);
			if (cause != NULL) {
				FUNC5(item, "height %s", cause);
				FUNC6(cause);
				return (CMD_RETURN_ERROR);
			}
		}
		FUNC8(wp, LAYOUT_TOPBOTTOM, y);
	}

	if (FUNC1(args, 'L'))
		FUNC7(wp, LAYOUT_LEFTRIGHT, -adjust, 1);
	else if (FUNC1(args, 'R'))
		FUNC7(wp, LAYOUT_LEFTRIGHT, adjust, 1);
	else if (FUNC1(args, 'U'))
		FUNC7(wp, LAYOUT_TOPBOTTOM, -adjust, 1);
	else if (FUNC1(args, 'D'))
		FUNC7(wp, LAYOUT_TOPBOTTOM, adjust, 1);
	FUNC9(wl->window);

	return (CMD_RETURN_NORMAL);
}