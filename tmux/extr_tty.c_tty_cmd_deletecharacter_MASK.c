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
struct window_pane {int dummy; } ;
struct tty_ctx {int /*<<< orphan*/  num; int /*<<< orphan*/  ocy; int /*<<< orphan*/  ocx; int /*<<< orphan*/  bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_DCH ; 
 int /*<<< orphan*/  TTYC_DCH1 ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,struct tty_ctx const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;

	if (ctx->bigger ||
	    !FUNC5(tty, ctx) ||
	    FUNC4(tty, wp, ctx->bg) ||
	    (!FUNC6(tty->term, TTYC_DCH) &&
	    !FUNC6(tty->term, TTYC_DCH1))) {
		FUNC2(tty, ctx, ctx->ocy);
		return;
	}

	FUNC1(tty, wp, ctx->bg);

	FUNC0(tty, ctx, ctx->ocx, ctx->ocy);

	FUNC3(tty, TTYC_DCH, TTYC_DCH1, ctx->num);
}