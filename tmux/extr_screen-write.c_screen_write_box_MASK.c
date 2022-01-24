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
struct screen_write_ctx {struct screen* s; } ;
struct screen {int cx; int cy; } ;
struct grid_cell {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_ATTR_CHARSET ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC0 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,struct grid_cell*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int,int) ; 

void
FUNC3(struct screen_write_ctx *ctx, u_int nx, u_int ny)
{
	struct screen		*s = ctx->s;
	struct grid_cell	 gc;
	u_int			 cx, cy, i;

	cx = s->cx;
	cy = s->cy;

	FUNC0(&gc, &grid_default_cell, sizeof gc);
	gc.attr |= GRID_ATTR_CHARSET;

	FUNC1(ctx, &gc, 'l');
	for (i = 1; i < nx - 1; i++)
		FUNC1(ctx, &gc, 'q');
	FUNC1(ctx, &gc, 'k');

	FUNC2(ctx, cx, cy + ny - 1);
	FUNC1(ctx, &gc, 'm');
	for (i = 1; i < nx - 1; i++)
		FUNC1(ctx, &gc, 'q');
	FUNC1(ctx, &gc, 'j');

	for (i = 1; i < ny - 1; i++) {
		FUNC2(ctx, cx, cy + i);
		FUNC1(ctx, &gc, 'x');
	}
	for (i = 1; i < ny - 1; i++) {
		FUNC2(ctx, cx + nx - 1, cy + i);
		FUNC1(ctx, &gc, 'x');
	}

	FUNC2(ctx, cx, cy);
}