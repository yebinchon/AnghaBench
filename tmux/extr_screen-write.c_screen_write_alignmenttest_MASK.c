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
struct tty_ctx {int dummy; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ rlower; scalar_t__ rupper; int /*<<< orphan*/  grid; } ;
struct grid_cell {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 scalar_t__ FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_cmd_alignmenttest ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tty_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 

void
FUNC9(struct screen_write_ctx *ctx)
{
	struct screen		*s = ctx->s;
	struct tty_ctx	 	 ttyctx;
	struct grid_cell       	 gc;
	u_int			 xx, yy;

	FUNC1(&gc, &grid_default_cell, sizeof gc);
	FUNC8(&gc.data, 'E');

	for (yy = 0; yy < FUNC3(s); yy++) {
		for (xx = 0; xx < FUNC2(s); xx++)
			FUNC0(s->grid, xx, yy, &gc);
	}

	FUNC6(ctx, 0, 0);

	s->rupper = 0;
	s->rlower = FUNC3(s) - 1;

	FUNC5(ctx, &ttyctx);

	FUNC4(ctx, 0, FUNC3(s) - 1);
	FUNC7(tty_cmd_alignmenttest, &ttyctx);
}