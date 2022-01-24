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
struct window_pane {int /*<<< orphan*/  flags; struct screen* screen; } ;
struct tty_ctx {scalar_t__ ocy; scalar_t__ orupper; scalar_t__ orlower; struct window_pane* wp; } ;
struct tty {int dummy; } ;
struct screen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PANE_REDRAW ; 
 scalar_t__ FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct tty_ctx const*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct tty*,struct tty_ctx const*) ; 

__attribute__((used)) static void
FUNC3(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;
	struct screen		*s = wp->screen;
	u_int			 i;

	/*
	 * If region is large, schedule a window redraw. In most cases this is
	 * likely to be followed by some more scrolling.
	 */
	if (FUNC2(tty, ctx)) {
		wp->flags |= PANE_REDRAW;
		return;
	}

	if (ctx->ocy < ctx->orupper || ctx->ocy > ctx->orlower) {
		for (i = ctx->ocy; i < FUNC0(s); i++)
			FUNC1(tty, ctx, i);
	} else {
		for (i = ctx->orupper; i <= ctx->orlower; i++)
			FUNC1(tty, ctx, i);
	}
}