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
typedef  int u_int ;
struct winlink {int idx; int flags; struct window* window; struct session* session; } ;
struct window {int dummy; } ;
struct session {int /*<<< orphan*/  lastw; int /*<<< orphan*/  windows; struct winlink* curw; } ;
struct format_tree {struct winlink* wl; struct window* w; struct client* c; } ;
struct client {int /*<<< orphan*/  tty; } ;
struct TYPE_2__ {struct winlink* wl; } ;

/* Variables and functions */
 struct winlink* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct winlink* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct winlink* FUNC2 (int /*<<< orphan*/ *) ; 
 int WINLINK_ACTIVITY ; 
 int WINLINK_BELL ; 
 int WINLINK_SILENCE ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct format_tree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  format_cb_window_stack_index ; 
 int /*<<< orphan*/  FUNC5 (struct format_tree*,struct window*) ; 
 TYPE_1__ marked_pane ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (struct session*,struct window*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int FUNC9 (struct winlink*) ; 
 int /*<<< orphan*/  winlinks ; 

__attribute__((used)) static void
FUNC10(struct format_tree *ft, struct winlink *wl)
{
	struct client	*c = ft->c;
	struct session	*s = wl->session;
	struct window	*w = wl->window;
	int		 flag;
	u_int		 ox, oy, sx, sy;

	if (ft->w == NULL)
		ft->w = wl->window;
	ft->wl = wl;

	FUNC5(ft, w);

	if (c != NULL) {
		flag = FUNC8(&c->tty, &ox, &oy, &sx, &sy);
		FUNC3(ft, "window_bigger", "%d", flag);
		if (flag) {
			FUNC3(ft, "window_offset_x", "%u", ox);
			FUNC3(ft, "window_offset_y", "%u", oy);
		}
	}

	FUNC3(ft, "window_index", "%d", wl->idx);
	FUNC4(ft, "window_stack_index", format_cb_window_stack_index);
	FUNC3(ft, "window_flags", "%s", FUNC9(wl));
	FUNC3(ft, "window_active", "%d", wl == s->curw);

	FUNC3(ft, "window_start_flag", "%d",
	    !!(wl == FUNC1(winlinks, &s->windows)));
	FUNC3(ft, "window_end_flag", "%d",
	    !!(wl == FUNC0(winlinks, &s->windows)));

	if (FUNC6() && marked_pane.wl == wl)
	    FUNC3(ft, "window_marked_flag", "1");
	else
	    FUNC3(ft, "window_marked_flag", "0");

	FUNC3(ft, "window_bell_flag", "%d",
	    !!(wl->flags & WINLINK_BELL));
	FUNC3(ft, "window_activity_flag", "%d",
	    !!(wl->flags & WINLINK_ACTIVITY));
	FUNC3(ft, "window_silence_flag", "%d",
	    !!(wl->flags & WINLINK_SILENCE));
	FUNC3(ft, "window_last_flag", "%d",
	    !!(wl == FUNC2(&s->lastw)));
	FUNC3(ft, "window_linked", "%d", FUNC7(s, wl->window));
}