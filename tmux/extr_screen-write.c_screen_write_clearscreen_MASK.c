#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct tty_ctx {int /*<<< orphan*/  bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {TYPE_1__* grid; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int GRID_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearscreen ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC7(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen	*s = ctx->s;
	struct tty_ctx	 ttyctx;
	u_int		 sx = FUNC2(s), sy = FUNC3(s);

	FUNC5(ctx, &ttyctx);
	ttyctx.bg = bg;

	/* Scroll into history if it is enabled. */
	if (s->grid->flags & GRID_HISTORY)
		FUNC1(s->grid, bg);
	else
		FUNC0(s->grid, 0, 0, sx, sy, bg);

	FUNC4(ctx, 0, sy);
	FUNC6(tty_cmd_clearscreen, &ttyctx);
}