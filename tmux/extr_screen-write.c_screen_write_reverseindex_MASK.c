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
typedef  int /*<<< orphan*/  u_int ;
struct tty_ctx {int /*<<< orphan*/  bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cy; scalar_t__ rupper; int /*<<< orphan*/  rlower; int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int,scalar_t__) ; 
 int /*<<< orphan*/  tty_cmd_reverseindex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC5(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen	*s = ctx->s;
	struct tty_ctx	 ttyctx;

	FUNC2(ctx, &ttyctx);
	ttyctx.bg = bg;

	if (s->cy == s->rupper)
		FUNC0(s->grid, s->rupper, s->rlower, bg);
	else if (s->cy > 0)
		FUNC3(ctx, -1, s->cy - 1);

	FUNC1(ctx, 0);
	FUNC4(tty_cmd_reverseindex, &ttyctx);
}