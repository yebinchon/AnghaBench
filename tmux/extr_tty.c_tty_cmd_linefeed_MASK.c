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
struct tty_ctx {scalar_t__ ocy; scalar_t__ orlower; scalar_t__ xoff; scalar_t__ ocx; scalar_t__ yoff; int /*<<< orphan*/  orupper; int /*<<< orphan*/  bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {scalar_t__ rright; int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tty*,struct window_pane*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

void
FUNC11(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;

	if (ctx->ocy != ctx->orlower)
		return;

	if (ctx->bigger ||
	    (!FUNC5(tty, ctx) && !FUNC10(tty)) ||
	    FUNC3(tty, wp, 8) ||
	    !FUNC9(tty->term, TTYC_CSR) ||
	    wp->sx == 1 ||
	    wp->sy == 1) {
		FUNC7(tty, ctx);
		return;
	}

	FUNC2(tty, wp, ctx->bg);

	FUNC8(tty, ctx, ctx->orupper, ctx->orlower);
	FUNC4(tty, ctx);

	/*
	 * If we want to wrap a pane while using margins, the cursor needs to
	 * be exactly on the right of the region. If the cursor is entirely off
	 * the edge - move it back to the right. Some terminals are funny about
	 * this and insert extra spaces, so only use the right if margins are
	 * enabled.
	 */
	if (ctx->xoff + ctx->ocx > tty->rright) {
		if (!FUNC10(tty))
			FUNC0(tty, 0, ctx->yoff + ctx->ocy);
		else
			FUNC0(tty, tty->rright, ctx->yoff + ctx->ocy);
	} else
		FUNC1(tty, ctx, ctx->ocx, ctx->ocy);

	FUNC6(tty, '\n');
}