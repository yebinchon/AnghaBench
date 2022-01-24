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
struct screen {int mode; int rlower; scalar_t__ rupper; } ;

/* Variables and functions */
 int MODE_ORIGIN ; 
 int FUNC0 (struct screen*) ; 
 int FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int,int) ; 

void
FUNC3(struct screen_write_ctx *ctx, int px, int py,
    int origin)
{
	struct screen	*s = ctx->s;

	if (origin && py != -1 && (s->mode & MODE_ORIGIN)) {
		if ((u_int)py > s->rlower - s->rupper)
			py = s->rlower;
		else
			py += s->rupper;
	}

	if (px != -1 && (u_int)px > FUNC0(s) - 1)
		px = FUNC0(s) - 1;
	if (py != -1 && (u_int)py > FUNC1(s) - 1)
		py = FUNC1(s) - 1;

	FUNC2(ctx, px, py);
}