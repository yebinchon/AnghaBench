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
struct screen_write_ctx {struct screen* s; } ;
struct screen {int mode; } ;

/* Variables and functions */
 int MODE_CURSOR ; 
 int MODE_WRAP ; 
 int /*<<< orphan*/  FUNC0 (struct screen*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct screen_write_ctx *ctx)
{
	struct screen	*s = ctx->s;

	FUNC0(s);
	FUNC3(ctx, 0, FUNC1(s) - 1);

	s->mode = MODE_CURSOR | MODE_WRAP;

	FUNC2(ctx, 8);
	FUNC4(ctx, 0, 0);
}