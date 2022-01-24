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
struct tty_ctx {int /*<<< orphan*/  bg; scalar_t__ ocx; int /*<<< orphan*/  ocy; struct window_pane* wp; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,struct tty_ctx const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,struct window_pane*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct tty *tty, const struct tty_ctx *ctx)
{
	struct window_pane	*wp = ctx->wp;
	u_int			 nx;

	FUNC2(tty, wp, ctx->bg);

	nx = FUNC0(wp->screen) - ctx->ocx;
	FUNC1(tty, ctx, ctx->ocy, ctx->ocx, nx, ctx->bg);
}