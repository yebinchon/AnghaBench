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
struct winlink {struct window* window; } ;
struct window {int sx; int sy; int /*<<< orphan*/  options; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {scalar_t__ argc; int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  WINDOW_MAXIMUM ; 
 int /*<<< orphan*/  WINDOW_MINIMUM ; 
 int /*<<< orphan*/  WINDOW_SIZE_LARGEST ; 
 int /*<<< orphan*/  WINDOW_SIZE_MANUAL ; 
 int /*<<< orphan*/  WINDOW_SIZE_SMALLEST ; 
 scalar_t__ FUNC0 (struct args*,char) ; 
 int FUNC1 (struct args*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct session*,struct window*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct window*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static enum cmd_retval
FUNC8(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct winlink		*wl = item->target.wl;
	struct window		*w = wl->window;
	struct session		*s = item->target.s;
	const char	       	*errstr;
	char			*cause;
	u_int			 adjust, sx, sy;

	if (args->argc == 0)
		adjust = 1;
	else {
		adjust = FUNC7(args->argv[0], 1, INT_MAX, &errstr);
		if (errstr != NULL) {
			FUNC2(item, "adjustment %s", errstr);
			return (CMD_RETURN_ERROR);
		}
	}

	sx = w->sx;
	sy = w->sy;

	if (FUNC0(args, 'x')) {
		sx = FUNC1(args, 'x', WINDOW_MINIMUM, WINDOW_MAXIMUM,
		    &cause);
		if (cause != NULL) {
			FUNC2(item, "width %s", cause);
			FUNC4(cause);
			return (CMD_RETURN_ERROR);
		}
	}
	if (FUNC0(args, 'y')) {
		sy = FUNC1(args, 'y', WINDOW_MINIMUM, WINDOW_MAXIMUM,
		    &cause);
		if (cause != NULL) {
			FUNC2(item, "height %s", cause);
			FUNC4(cause);
			return (CMD_RETURN_ERROR);
		}
	}

	if (FUNC0(args, 'L')) {
		if (sx >= adjust)
			sx -= adjust;
	} else if (FUNC0(args, 'R'))
		sx += adjust;
	else if (FUNC0(args, 'U')) {
		if (sy >= adjust)
			sy -= adjust;
	} else if (FUNC0(args, 'D'))
		sy += adjust;

	if (FUNC0(args, 'A'))
		FUNC3(NULL, s, w, &sx, &sy, WINDOW_SIZE_LARGEST);
	else if (FUNC0(args, 'a'))
		FUNC3(NULL, s, w, &sx, &sy, WINDOW_SIZE_SMALLEST);

	FUNC5(w->options, "window-size", WINDOW_SIZE_MANUAL);
	FUNC6(w, sx, sy);

	return (CMD_RETURN_NORMAL);
}