#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {int cx; int cy; int mode; TYPE_1__* grid; } ;
struct grid_cell {int /*<<< orphan*/  attr; } ;
struct TYPE_2__ {scalar_t__ hsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_ATTR_REVERSE ; 
 int MODE_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,struct grid_cell*) ; 
 int FUNC1 (struct screen*) ; 
 int FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct screen*,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int,int) ; 

void
FUNC6(struct screen_write_ctx *ctx, struct screen *src, u_int nx,
    u_int ny)
{
	struct screen		*s = ctx->s;
	struct grid_cell	 gc;
	u_int			 cx, cy, px, py;

	cx = s->cx;
	cy = s->cy;

	/*
	 * If the cursor is on, pick the area around the cursor, otherwise use
	 * the top left.
	 */
	if (src->mode & MODE_CURSOR) {
		px = src->cx;
		if (px < nx / 3)
			px = 0;
		else
			px = px - nx / 3;
		if (px + nx > FUNC1(src)) {
			if (nx > FUNC1(src))
				px = 0;
			else
				px = FUNC1(src) - nx;
		}
		py = src->cy;
		if (py < ny / 3)
			py = 0;
		else
			py = py - ny / 3;
		if (py + ny > FUNC2(src)) {
			if (ny > FUNC2(src))
				py = 0;
			else
				py = FUNC2(src) - ny;
		}
	} else {
		px = 0;
		py = 0;
	}

	FUNC4(ctx, src, px, src->grid->hsize + py, nx, ny);

	if (src->mode & MODE_CURSOR) {
		FUNC0(src->grid, src->cx, src->cy, &gc);
		gc.attr |= GRID_ATTR_REVERSE;
		FUNC5(ctx, cx + (src->cx - px),
		    cy + (src->cy - py));
		FUNC3(ctx, &gc);
	}
}