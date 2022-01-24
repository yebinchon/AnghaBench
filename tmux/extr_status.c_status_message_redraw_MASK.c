#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct status_line {TYPE_2__* active; int /*<<< orphan*/  screen; } ;
struct session {int /*<<< orphan*/  options; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {int /*<<< orphan*/  grid; } ;
struct grid_cell {int dummy; } ;
struct TYPE_5__ {size_t sx; scalar_t__ sy; } ;
struct client {int /*<<< orphan*/  message_string; TYPE_1__ tty; struct session* session; struct status_line status; } ;
struct TYPE_6__ {int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,size_t,struct grid_cell*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*,struct grid_cell*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct screen_write_ctx*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct screen_write_ctx*) ; 
 size_t FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct client*) ; 
 int /*<<< orphan*/  FUNC12 (struct grid_cell*,int /*<<< orphan*/ ,char*) ; 

int
FUNC13(struct client *c)
{
	struct status_line	*sl = &c->status;
	struct screen_write_ctx	 ctx;
	struct session		*s = c->session;
	struct screen		 old_screen;
	size_t			 len;
	u_int			 lines, offset;
	struct grid_cell	 gc;

	if (c->tty.sx == 0 || c->tty.sy == 0)
		return (0);
	FUNC1(&old_screen, sl->active, sizeof old_screen);

	lines = FUNC11(c);
	if (lines <= 1)
		lines = 1;
	FUNC3(sl->active, c->tty.sx, lines, 0);

	len = FUNC10("%s", c->message_string);
	if (len > c->tty.sx)
		len = c->tty.sx;

	FUNC12(&gc, s->options, "message-style");

	FUNC8(&ctx, NULL, sl->active);
	FUNC5(&ctx, &sl->screen, 0, 0, c->tty.sx, lines - 1);
	FUNC4(&ctx, 0, lines - 1, 0);
	for (offset = 0; offset < c->tty.sx; offset++)
		FUNC7(&ctx, &gc, ' ');
	FUNC4(&ctx, 0, lines - 1, 0);
	FUNC6(&ctx, len, &gc, "%s", c->message_string);
	FUNC9(&ctx);

	if (FUNC0(sl->active->grid, old_screen.grid) == 0) {
		FUNC2(&old_screen);
		return (0);
	}
	FUNC2(&old_screen);
	return (1);
}