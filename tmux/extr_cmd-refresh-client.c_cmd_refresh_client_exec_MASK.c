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
struct window {scalar_t__ sx; scalar_t__ sy; } ;
struct tty {scalar_t__ oox; scalar_t__ ooy; scalar_t__ osx; scalar_t__ osy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct client {scalar_t__ pan_ox; scalar_t__ pan_oy; int flags; struct tty tty; TYPE_2__* session; struct window* pan_window; } ;
struct args {scalar_t__ argc; int /*<<< orphan*/ * argv; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;

/* Variables and functions */
 int CLIENT_CONTROL ; 
 int CLIENT_CONTROL_NOOUTPUT ; 
 int CLIENT_SIZECHANGED ; 
 int CLIENT_STATUSFORCE ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  TTYC_MS ; 
 scalar_t__ WINDOW_MAXIMUM ; 
 scalar_t__ WINDOW_MINIMUM ; 
 char* FUNC0 (struct args*,float) ; 
 scalar_t__ FUNC1 (struct args*,char) ; 
 struct client* FUNC2 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct client*) ; 
 int /*<<< orphan*/  FUNC7 (struct client*) ; 
 int FUNC8 (char const*,char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char**,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct client*) ; 
 char* FUNC15 (char*) ; 

__attribute__((used)) static enum cmd_retval
FUNC16(struct cmd *self, struct cmdq_item *item)
{
	struct args	*args = self->args;
	struct client	*c;
	struct tty	*tty;
	struct window	*w;
	const char	*size, *errstr;
	char		*copy, *next, *s;
	u_int		 x, y, adjust;

	if ((c = FUNC2(item, FUNC0(args, 't'), 0)) == NULL)
		return (CMD_RETURN_ERROR);
	tty = &c->tty;

	if (FUNC1(args, 'c') ||
	    FUNC1(args, 'L') ||
	    FUNC1(args, 'R') ||
	    FUNC1(args, 'U') ||
	    FUNC1(args, 'D'))
	{
		if (args->argc == 0)
			adjust = 1;
		else {
			adjust = FUNC11(args->argv[0], 1, INT_MAX, &errstr);
			if (errstr != NULL) {
				FUNC3(item, "adjustment %s", errstr);
				return (CMD_RETURN_ERROR);
			}
		}

		if (FUNC1(args, 'c'))
		    c->pan_window = NULL;
		else {
			w = c->session->curw->window;
			if (c->pan_window != w) {
				c->pan_window = w;
				c->pan_ox = tty->oox;
				c->pan_oy = tty->ooy;
			}
			if (FUNC1(args, 'L')) {
				if (c->pan_ox > adjust)
					c->pan_ox -= adjust;
				else
					c->pan_ox = 0;
			} else if (FUNC1(args, 'R')) {
				c->pan_ox += adjust;
				if (c->pan_ox > w->sx - tty->osx)
					c->pan_ox = w->sx - tty->osx;
			} else if (FUNC1(args, 'U')) {
				if (c->pan_oy > adjust)
					c->pan_oy -= adjust;
				else
					c->pan_oy = 0;
			} else if (FUNC1(args, 'D')) {
				c->pan_oy += adjust;
				if (c->pan_oy > w->sy - tty->osy)
					c->pan_oy = w->sy - tty->osy;
			}
		}
		FUNC14(c);
		FUNC6(c);
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'l')) {
		if (c->session != NULL)
			FUNC12(&c->tty, TTYC_MS, "", "?");
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'C') || FUNC1(args, 'F')) {
		if (FUNC1(args, 'C')) {
			if (!(c->flags & CLIENT_CONTROL)) {
				FUNC3(item, "not a control client");
				return (CMD_RETURN_ERROR);
			}
			size = FUNC0(args, 'C');
			if (FUNC8(size, "%u,%u", &x, &y) != 2 &&
			    FUNC8(size, "%ux%u", &x, &y) != 2) {
				FUNC3(item, "bad size argument");
				return (CMD_RETURN_ERROR);
			}
			if (x < WINDOW_MINIMUM || x > WINDOW_MAXIMUM ||
			    y < WINDOW_MINIMUM || y > WINDOW_MAXIMUM) {
				FUNC3(item, "size too small or too big");
				return (CMD_RETURN_ERROR);
			}
			FUNC13(&c->tty, x, y);
			c->flags |= CLIENT_SIZECHANGED;
			FUNC5();
		}
		if (FUNC1(args, 'F')) {
			if (!(c->flags & CLIENT_CONTROL)) {
				FUNC3(item, "not a control client");
				return (CMD_RETURN_ERROR);
			}
			s = copy = FUNC15(FUNC0(args, 'F'));
			while ((next = FUNC10(&s, ",")) != NULL) {
				/* Unknown flags are ignored. */
				if (FUNC9(next, "no-output") == 0)
					c->flags |= CLIENT_CONTROL_NOOUTPUT;
			}
			FUNC4(copy);
		}
		return (CMD_RETURN_NORMAL);
	}

	if (FUNC1(args, 'S')) {
		c->flags |= CLIENT_STATUSFORCE;
		FUNC7(c);
	} else {
		c->flags |= CLIENT_STATUSFORCE;
		FUNC6(c);
	}
	return (CMD_RETURN_NORMAL);
}