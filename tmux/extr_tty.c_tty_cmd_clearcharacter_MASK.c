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
struct tty_ctx {int /*<<< orphan*/  num; int /*<<< orphan*/  wp; int /*<<< orphan*/  ocy; int /*<<< orphan*/  ocx; int /*<<< orphan*/  bg; scalar_t__ bigger; } ;
struct tty {int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_ECH ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct tty *tty, const struct tty_ctx *ctx)
{
	if (ctx->bigger) {
		FUNC2(tty, ctx, ctx->ocy);
		return;
	}

	FUNC1(tty, ctx->wp, ctx->bg);

	FUNC0(tty, ctx, ctx->ocx, ctx->ocy);

	if (FUNC6(tty->term, TTYC_ECH) &&
	    !FUNC3(tty, ctx->wp, 8))
		FUNC4(tty, TTYC_ECH, ctx->num);
	else
		FUNC5(tty, ctx->num);
}