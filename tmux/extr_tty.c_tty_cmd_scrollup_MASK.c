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
struct window_pane {int sx; int sy; } ;
struct tty_ctx {int num; int /*<<< orphan*/  orlower; int /*<<< orphan*/  orupper; int /*<<< orphan*/  bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int /*<<< orphan*/  cy; int /*<<< orphan*/  rlower; int /*<<< orphan*/  rright; int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_CSR ; 
 int /*<<< orphan*/  TTYC_INDN ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tty*,struct window_pane*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

void
FUNC11(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;
	u_int			 i;

	if (ctx->bigger ||
	    (!FUNC4(tty, ctx) && !FUNC10(tty)) ||
	    FUNC2(tty, wp, 8) ||
	    !FUNC9(tty->term, TTYC_CSR) ||
	    wp->sx == 1 ||
	    wp->sy == 1) {
		FUNC7(tty, ctx);
		return;
	}

	FUNC1(tty, wp, ctx->bg);

	FUNC8(tty, ctx, ctx->orupper, ctx->orlower);
	FUNC3(tty, ctx);

	if (ctx->num == 1 || !FUNC9(tty->term, TTYC_INDN)) {
		if (!FUNC10(tty))
			FUNC0(tty, 0, tty->rlower);
		else
			FUNC0(tty, tty->rright, tty->rlower);
		for (i = 0; i < ctx->num; i++)
			FUNC5(tty, '\n');
	} else {
		FUNC0(tty, 0, tty->cy);
		FUNC6(tty, TTYC_INDN, ctx->num);
	}
}