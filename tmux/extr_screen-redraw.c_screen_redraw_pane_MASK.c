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
struct screen_redraw_ctx {int dummy; } ;
struct client {int /*<<< orphan*/  tty; int /*<<< orphan*/ * overlay_draw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct screen_redraw_ctx*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct window_pane*) ; 

void
FUNC4(struct client *c, struct window_pane *wp)
{
	struct screen_redraw_ctx	 ctx;

	if (c->overlay_draw != NULL || !FUNC3(wp))
		return;

	FUNC1(c, &ctx);

	FUNC0(&ctx, wp);
	FUNC2(&c->tty);
}