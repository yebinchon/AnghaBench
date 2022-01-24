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
struct window_pane {int sx; int sy; } ;
struct tty_ctx {scalar_t__ ocy; scalar_t__ orupper; int /*<<< orphan*/  ocx; int /*<<< orphan*/  orlower; int /*<<< orphan*/  bg; struct window_pane* wp; scalar_t__ bigger; } ;
struct tty {int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  TTYC_RI ; 
 int /*<<< orphan*/  TTYC_RIN ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty*,struct window_pane*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,struct tty_ctx const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

void
FUNC11(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;

	if (ctx->ocy != ctx->orupper)
		return;

	if (ctx->bigger ||
	    (!FUNC4(tty, ctx) && !FUNC10(tty)) ||
	    FUNC2(tty, wp, 8) ||
	    !FUNC9(tty->term, TTYC_CSR) ||
	    (!FUNC9(tty->term, TTYC_RI) &&
	    !FUNC9(tty->term, TTYC_RIN)) ||
	    ctx->wp->sx == 1 ||
	    ctx->wp->sy == 1) {
		FUNC7(tty, ctx);
		return;
	}

	FUNC1(tty, wp, ctx->bg);

	FUNC8(tty, ctx, ctx->orupper, ctx->orlower);
	FUNC3(tty, ctx);
	FUNC0(tty, ctx, ctx->ocx, ctx->orupper);

	if (FUNC9(tty->term, TTYC_RI))
		FUNC5(tty, TTYC_RI);
	else
		FUNC6(tty, TTYC_RIN, 1);
}