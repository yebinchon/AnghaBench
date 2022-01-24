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
typedef  scalar_t__ u_int ;
struct tty_ctx {scalar_t__ num; scalar_t__ bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cy; scalar_t__ rupper; scalar_t__ rlower; struct grid* grid; } ;
struct grid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_deleteline ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC6(struct screen_write_ctx *ctx, u_int ny, u_int bg)
{
	struct screen	*s = ctx->s;
	struct grid	*gd = s->grid;
	struct tty_ctx	 ttyctx;

	if (ny == 0)
		ny = 1;

	if (s->cy < s->rupper || s->cy > s->rlower) {
		if (ny > FUNC2(s) - s->cy)
			ny = FUNC2(s) - s->cy;
		if (ny == 0)
			return;

		FUNC4(ctx, &ttyctx);
		ttyctx.bg = bg;

		FUNC0(gd, s->cy, ny, bg);

		FUNC3(ctx, 0);
		ttyctx.num = ny;
		FUNC5(tty_cmd_deleteline, &ttyctx);
		return;
	}

	if (ny > s->rlower + 1 - s->cy)
		ny = s->rlower + 1 - s->cy;
	if (ny == 0)
		return;

	FUNC4(ctx, &ttyctx);
	ttyctx.bg = bg;

	if (s->cy < s->rupper || s->cy > s->rlower)
		FUNC0(gd, s->cy, ny, bg);
	else
		FUNC1(gd, s->rlower, s->cy, ny, bg);

	FUNC3(ctx, 0);
	ttyctx.num = ny;
	FUNC5(tty_cmd_deleteline, &ttyctx);
}