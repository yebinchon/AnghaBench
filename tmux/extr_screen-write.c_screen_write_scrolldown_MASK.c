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
struct screen {scalar_t__ rlower; scalar_t__ rupper; struct grid* grid; } ;
struct grid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_scrolldown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC4(struct screen_write_ctx *ctx, u_int lines, u_int bg)
{
	struct screen	*s = ctx->s;
	struct grid	*gd = s->grid;
	struct tty_ctx	 ttyctx;
	u_int		 i;

	FUNC2(ctx, &ttyctx);
	ttyctx.bg = bg;

	if (lines == 0)
		lines = 1;
	else if (lines > s->rlower - s->rupper + 1)
		lines = s->rlower - s->rupper + 1;

	for (i = 0; i < lines; i++)
		FUNC0(gd, s->rupper, s->rlower, bg);

	FUNC1(ctx, 0);
	ttyctx.num = lines;
	FUNC3(tty_cmd_scrolldown, &ttyctx);
}