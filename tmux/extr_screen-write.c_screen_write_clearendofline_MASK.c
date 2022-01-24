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
typedef  int u_int ;
struct tty_ctx {int bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {int cx; scalar_t__ cy; TYPE_1__* grid; } ;
struct grid_line {scalar_t__ cellsize; } ;
struct TYPE_3__ {scalar_t__ hsize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct grid_line* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,struct tty_ctx*) ; 
 int /*<<< orphan*/  tty_cmd_clearendofline ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tty_ctx*) ; 

void
FUNC8(struct screen_write_ctx *ctx, u_int bg)
{
	struct screen		*s = ctx->s;
	struct grid_line	*gl;
	struct tty_ctx		 ttyctx;
	u_int			 sx = FUNC3(s);

	gl = FUNC1(s->grid, s->grid->hsize + s->cy);
	if (s->cx > sx - 1 || (s->cx >= gl->cellsize && FUNC0(bg)))
		return;

	FUNC6(ctx, &ttyctx);
	ttyctx.bg = bg;

	FUNC2(s->grid, s->cx, s->cy, sx - s->cx, 1, bg);

	if (s->cx == 0)
		FUNC4(ctx, s->cy, 1);
	FUNC5(ctx, 0);
	FUNC7(tty_cmd_clearendofline, &ttyctx);
}