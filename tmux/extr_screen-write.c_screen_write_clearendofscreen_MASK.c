#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int ;
struct tty_ctx {int bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; struct grid* grid; } ;
struct grid {int flags; } ;

/* Variables and functions */
 int GRID_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (struct grid*,int,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,int) ; 
 int FUNC2 (struct screen*) ; 
 int FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearendofscreen ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC8(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen	*s = ctx->s;
	struct grid	*gd = s->grid;
	struct tty_ctx	 ttyctx;
	u_int		 sx = FUNC2(s), sy = FUNC3(s);

	FUNC6(ctx, &ttyctx);
	ttyctx.bg = bg;

	/* Scroll into history if it is enabled and clearing entire screen. */
	if (s->cx == 0 && s->cy == 0 && (gd->flags & GRID_HISTORY))
		FUNC1(gd, bg);
	else {
		if (s->cx <= sx - 1)
			FUNC0(gd, s->cx, s->cy, sx - s->cx, 1, bg);
		FUNC0(gd, 0, s->cy + 1, sx, sy - (s->cy + 1), bg);
	}

	FUNC4(ctx, s->cy + 1, sy - (s->cy + 1));
	FUNC5(ctx, 0);
	FUNC7(tty_cmd_clearendofscreen, &ttyctx);
}