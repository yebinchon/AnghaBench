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
struct screen {scalar_t__ cx; int /*<<< orphan*/  cy; int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearcharacter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC5(struct screen_write_ctx *ctx, u_int nx, u_int bg)
{
	struct screen	*s = ctx->s;
	struct tty_ctx	 ttyctx;

	if (nx == 0)
		nx = 1;

	if (nx > FUNC1(s) - s->cx)
		nx = FUNC1(s) - s->cx;
	if (nx == 0)
		return;

	if (s->cx > FUNC1(s) - 1)
		return;

	FUNC3(ctx, &ttyctx);
	ttyctx.bg = bg;

	FUNC0(s->grid, s->cx, s->cy, nx, 1, bg);

	FUNC2(ctx, 0);
	ttyctx.num = nx;
	FUNC4(tty_cmd_clearcharacter, &ttyctx);
}