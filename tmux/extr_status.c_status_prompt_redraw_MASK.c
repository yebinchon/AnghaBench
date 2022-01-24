#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct status_line {struct screen* active; int /*<<< orphan*/  screen; } ;
struct session {int /*<<< orphan*/  options; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {scalar_t__ cx; int /*<<< orphan*/  grid; int /*<<< orphan*/  data; int /*<<< orphan*/  attr; } ;
struct grid_cell {scalar_t__ cx; int /*<<< orphan*/  grid; int /*<<< orphan*/  data; int /*<<< orphan*/  attr; } ;
struct TYPE_4__ {scalar_t__ sx; scalar_t__ sy; } ;
struct client {scalar_t__ prompt_mode; int prompt_index; TYPE_2__* prompt_buffer; TYPE_1__ tty; int /*<<< orphan*/  prompt_string; struct session* session; struct status_line status; } ;
struct TYPE_5__ {scalar_t__ size; int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_ATTR_REVERSE ; 
 scalar_t__ PROMPT_COMMAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*,struct screen*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct screen*) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,struct screen*) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct screen_write_ctx*,int,struct screen*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct screen_write_ctx*,struct screen*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC11 (struct screen_write_ctx*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct client*) ; 
 int /*<<< orphan*/  FUNC14 (struct screen*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*,int) ; 

int
FUNC17(struct client *c)
{
	struct status_line	*sl = &c->status;
	struct screen_write_ctx	 ctx;
	struct session		*s = c->session;
	struct screen		 old_screen;
	u_int			 i, lines, offset, left, start, width;
	u_int			 pcursor, pwidth;
	struct grid_cell	 gc, cursorgc;

	if (c->tty.sx == 0 || c->tty.sy == 0)
		return (0);
	FUNC1(&old_screen, sl->active, sizeof old_screen);

	lines = FUNC13(c);
	if (lines <= 1)
		lines = 1;
	FUNC3(sl->active, c->tty.sx, lines, 0);

	if (c->prompt_mode == PROMPT_COMMAND)
		FUNC14(&gc, s->options, "message-command-style");
	else
		FUNC14(&gc, s->options, "message-style");

	FUNC1(&cursorgc, &gc, sizeof cursorgc);
	cursorgc.attr ^= GRID_ATTR_REVERSE;

	start = FUNC12("%s", c->prompt_string);
	if (start > c->tty.sx)
		start = c->tty.sx;

	FUNC10(&ctx, NULL, sl->active);
	FUNC7(&ctx, &sl->screen, 0, 0, c->tty.sx, lines - 1);
	FUNC6(&ctx, 0, lines - 1, 0);
	for (offset = 0; offset < c->tty.sx; offset++)
		FUNC9(&ctx, &gc, ' ');
	FUNC6(&ctx, 0, lines - 1, 0);
	FUNC8(&ctx, start, &gc, "%s", c->prompt_string);
	FUNC6(&ctx, start, lines - 1, 0);

	left = c->tty.sx - start;
	if (left == 0)
		goto finished;

	pcursor = FUNC16(c->prompt_buffer, c->prompt_index);
	pwidth = FUNC16(c->prompt_buffer, -1);
	if (pcursor >= left) {
		/*
		 * The cursor would be outside the screen so start drawing
		 * with it on the right.
		 */
		offset = (pcursor - left) + 1;
		pwidth = left;
	} else
		offset = 0;
	if (pwidth > left)
		pwidth = left;

	width = 0;
	for (i = 0; c->prompt_buffer[i].size != 0; i++) {
		if (width < offset) {
			width += c->prompt_buffer[i].width;
			continue;
		}
		if (width >= offset + pwidth)
			break;
		width += c->prompt_buffer[i].width;
		if (width > offset + pwidth)
			break;

		if (i != c->prompt_index) {
			FUNC15(&gc.data, &c->prompt_buffer[i]);
			FUNC5(&ctx, &gc);
		} else {
			FUNC15(&cursorgc.data, &c->prompt_buffer[i]);
			FUNC5(&ctx, &cursorgc);
		}
	}
	if (sl->active->cx < FUNC4(sl->active) && c->prompt_index >= i)
		FUNC9(&ctx, &cursorgc, ' ');

finished:
	FUNC11(&ctx);

	if (FUNC0(sl->active->grid, old_screen.grid) == 0) {
		FUNC2(&old_screen);
		return (0);
	}
	FUNC2(&old_screen);
	return (1);
}