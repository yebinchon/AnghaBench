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
struct screen {int cx; int /*<<< orphan*/  cy; int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearstartofline ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC6(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen	*s = ctx->s;
	struct tty_ctx	 ttyctx;
	u_int		 sx = FUNC1(s);

	FUNC4(ctx, &ttyctx);
	ttyctx.bg = bg;

	if (s->cx > sx - 1)
		FUNC0(s->grid, 0, s->cy, sx, 1, bg);
	else
		FUNC0(s->grid, 0, s->cy, s->cx + 1, 1, bg);

	if (s->cx > sx - 1)
		FUNC2(ctx, s->cy, 1);
	FUNC3(ctx, 0);
	FUNC5(tty_cmd_clearstartofline, &ttyctx);
}