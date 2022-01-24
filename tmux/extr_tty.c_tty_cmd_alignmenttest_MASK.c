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
struct tty_ctx {scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int dummy; } ;
struct screen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PANE_REDRAW ; 
 int /*<<< orphan*/  grid_default_cell ; 
 scalar_t__ FUNC0 (struct screen*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ *,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;
	struct screen		*s = wp->screen;
	u_int			 i, j;

	if (ctx->bigger) {
		wp->flags |= PANE_REDRAW;
		return;
	}

	FUNC2(tty, &grid_default_cell, wp);

	FUNC6(tty, ctx, 0, FUNC1(s) - 1);
	FUNC4(tty);

	for (j = 0; j < FUNC1(s); j++) {
		FUNC3(tty, ctx, 0, j);
		for (i = 0; i < FUNC0(s); i++)
			FUNC5(tty, 'E');
	}
}