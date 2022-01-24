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
struct screen {scalar_t__ cy; TYPE_1__* grid; } ;
struct grid_line {scalar_t__ cellsize; } ;
struct TYPE_3__ {scalar_t__ hsize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct grid_line* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearline ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC8(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen		*s = ctx->s;
	struct grid_line	*gl;
	struct tty_ctx		 ttyctx;
	u_int			 sx = FUNC3(s);

	gl = FUNC1(s->grid, s->grid->hsize + s->cy);
	if (gl->cellsize == 0 && FUNC0(bg))
		return;

	FUNC6(ctx, &ttyctx);
	ttyctx.bg = bg;

	FUNC2(s->grid, 0, s->cy, sx, 1, bg);

	FUNC4(ctx, s->cy, 1);
	FUNC5(ctx, 0);
	FUNC7(tty_cmd_clearline, &ttyctx);
}