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
typedef  scalar_t__ u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; struct grid* grid; } ;
struct TYPE_2__ {scalar_t__ width; } ;
struct grid_cell {TYPE_1__ data; int /*<<< orphan*/  bg; int /*<<< orphan*/  fg; int /*<<< orphan*/  attr; } ;
struct grid {int dummy; } ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,scalar_t__,scalar_t__) ; 

void
FUNC5(struct screen_write_ctx *ctx, struct screen *src, u_int px,
    u_int py, u_int nx, u_int ny, bitstr_t *mbs, const struct grid_cell *mgc)
{
	struct screen		*s = ctx->s;
	struct grid		*gd = src->grid;
	struct grid_cell	 gc;
	u_int		 	 xx, yy, cx, cy, b;

	if (nx == 0 || ny == 0)
		return;

	cx = s->cx;
	cy = s->cy;

	for (yy = py; yy < py + ny; yy++) {
		for (xx = px; xx < px + nx; xx++) {
			FUNC1(gd, xx, yy, &gc);
			if (mbs != NULL) {
				b = (yy * FUNC2(src)) + xx;
				if (FUNC0(mbs, b)) {
					gc.attr = mgc->attr;
					gc.fg = mgc->fg;
					gc.bg = mgc->bg;
				}
			}
			if (xx + gc.data.width <= px + nx)
				FUNC3(ctx, &gc);
		}
		cy++;
		FUNC4(ctx, cx, cy);
	}
}