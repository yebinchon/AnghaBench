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
struct tty_ctx {int /*<<< orphan*/  num; int /*<<< orphan*/  ocy; int /*<<< orphan*/  ocx; int /*<<< orphan*/  orlower; int /*<<< orphan*/  orupper; int /*<<< orphan*/  bg; TYPE_1__* wp; scalar_t__ bigger; } ;
struct tty {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  term; } ;
struct TYPE_3__ {int sx; int sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  TTYC_IL ; 
 int /*<<< orphan*/  TTYC_IL1 ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tty*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(struct tty *tty, const struct tty_ctx *ctx)
{
	if (ctx->bigger ||
	    !FUNC5(tty, ctx) ||
	    FUNC3(tty, ctx->wp, ctx->bg) ||
	    !FUNC8(tty->term, TTYC_CSR) ||
	    !FUNC8(tty->term, TTYC_IL1) ||
	    ctx->wp->sx == 1 ||
	    ctx->wp->sy == 1) {
		FUNC6(tty, ctx);
		return;
	}

	FUNC1(tty, ctx->wp, ctx->bg);

	FUNC7(tty, ctx, ctx->orupper, ctx->orlower);
	FUNC4(tty);
	FUNC0(tty, ctx, ctx->ocx, ctx->ocy);

	FUNC2(tty, TTYC_IL, TTYC_IL1, ctx->num);
	tty->cx = tty->cy = UINT_MAX;
}