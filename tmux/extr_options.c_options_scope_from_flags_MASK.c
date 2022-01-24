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
struct winlink {TYPE_1__* window; } ;
struct window_pane {struct options* options; } ;
struct session {struct options* options; } ;
struct options {int dummy; } ;
struct cmd_find_state {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct args {int dummy; } ;
struct TYPE_2__ {struct options* options; } ;

/* Variables and functions */
 int OPTIONS_TABLE_NONE ; 
 int OPTIONS_TABLE_PANE ; 
 int OPTIONS_TABLE_SERVER ; 
 int OPTIONS_TABLE_SESSION ; 
 int OPTIONS_TABLE_WINDOW ; 
 char* FUNC0 (struct args*,char) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 struct options* global_options ; 
 struct options* global_s_options ; 
 struct options* global_w_options ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,...) ; 

int
FUNC3(struct args *args, int window,
    struct cmd_find_state *fs, struct options **oo, char **cause)
{
	struct session		*s = fs->s;
	struct winlink		*wl = fs->wl;
	struct window_pane	*wp = fs->wp;
	const char		*target = FUNC0(args, 't');

	if (FUNC1(args, 's')) {
		*oo = global_options;
		return (OPTIONS_TABLE_SERVER);
	}

	if (FUNC1(args, 'p')) {
		if (wp == NULL) {
			if (target != NULL)
				FUNC2(cause, "no such pane: %s", target);
			else
				FUNC2(cause, "no current pane");
			return (OPTIONS_TABLE_NONE);
		}
		*oo = wp->options;
		return (OPTIONS_TABLE_PANE);
	} else if (window || FUNC1(args, 'w')) {
		if (FUNC1(args, 'g')) {
			*oo = global_w_options;
			return (OPTIONS_TABLE_WINDOW);
		}
		if (wl == NULL) {
			if (target != NULL)
				FUNC2(cause, "no such window: %s", target);
			else
				FUNC2(cause, "no current window");
			return (OPTIONS_TABLE_NONE);
		}
		*oo = wl->window->options;
		return (OPTIONS_TABLE_WINDOW);
	} else {
		if (FUNC1(args, 'g')) {
			*oo = global_s_options;
			return (OPTIONS_TABLE_SESSION);
		}
		if (s == NULL) {
			if (target != NULL)
				FUNC2(cause, "no such session: %s", target);
			else
				FUNC2(cause, "no current session");
			return (OPTIONS_TABLE_NONE);
		}
		*oo = s->options;
		return (OPTIONS_TABLE_SESSION);
	}
}