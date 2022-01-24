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
struct window_pane {int /*<<< orphan*/  screen; } ;
struct tty_ctx {int /*<<< orphan*/  bg; scalar_t__ ocy; scalar_t__ ocx; struct window_pane* wp; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;
	u_int			 px, py, nx, ny;

	FUNC4(tty, wp, ctx->bg);

	FUNC6(tty, ctx, 0, FUNC1(wp->screen) - 1);
	FUNC5(tty);

	px = 0;
	nx = FUNC0(wp->screen);
	py = 0;
	ny = ctx->ocy;

	FUNC2(tty, ctx, py, ny, px, nx, ctx->bg);

	px = 0;
	nx = ctx->ocx + 1;
	py = ctx->ocy;

	FUNC3(tty, ctx, py, px, nx, ctx->bg);
}