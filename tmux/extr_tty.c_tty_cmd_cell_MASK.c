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
struct tty_ctx {int ocx; scalar_t__ ocy; int xoff; int ox; scalar_t__ orlower; int /*<<< orphan*/  wp; int /*<<< orphan*/  cell; int /*<<< orphan*/  orupper; } ;
struct tty {int sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct tty_ctx const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct tty_ctx const*,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC6(struct tty *tty, const struct tty_ctx *ctx)
{
	if (!FUNC2(tty, ctx, ctx->ocx, ctx->ocy, 1, 1))
		return;

	if (ctx->xoff + ctx->ocx - ctx->ox > tty->sx - 1 &&
	    ctx->ocy == ctx->orlower &&
	    FUNC4(tty, ctx))
		FUNC5(tty, ctx, ctx->orupper, ctx->orlower);

	FUNC3(tty);
	FUNC1(tty, ctx, ctx->ocx, ctx->ocy);

	FUNC0(tty, ctx->cell, ctx->wp);
}