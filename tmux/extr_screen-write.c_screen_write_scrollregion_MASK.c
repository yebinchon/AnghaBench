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
struct screen {int rupper; int rlower; } ;

/* Variables and functions */
 int FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct screen_write_ctx *ctx, u_int rupper,
    u_int rlower)
{
	struct screen	*s = ctx->s;

	if (rupper > FUNC0(s) - 1)
		rupper = FUNC0(s) - 1;
	if (rlower > FUNC0(s) - 1)
		rlower = FUNC0(s) - 1;
	if (rupper >= rlower)	/* cannot be one line */
		return;

	FUNC1(ctx, 0);

	/* Cursor moves to top-left. */
	FUNC2(ctx, 0, 0);

	s->rupper = rupper;
	s->rlower = rlower;
}