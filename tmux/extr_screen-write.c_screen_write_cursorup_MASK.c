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
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; scalar_t__ rupper; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,scalar_t__,scalar_t__) ; 

void
FUNC2(struct screen_write_ctx *ctx, u_int ny)
{
	struct screen	*s = ctx->s;
	u_int		 cx = s->cx, cy = s->cy;

	if (ny == 0)
		ny = 1;

	if (cy < s->rupper) {
		/* Above region. */
		if (ny > cy)
			ny = cy;
	} else {
		/* Below region. */
		if (ny > cy - s->rupper)
			ny = cy - s->rupper;
	}
	if (cx == FUNC0(s))
		cx--;

	cy -= ny;

	FUNC1(ctx, cx, cy);
}