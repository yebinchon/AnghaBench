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
struct screen_redraw_ctx {scalar_t__ pane_status; scalar_t__ statuslines; } ;
struct client {int flags; int /*<<< orphan*/  tty; int /*<<< orphan*/  (* overlay_draw ) (struct client*,struct screen_redraw_ctx*) ;} ;

/* Variables and functions */
 int CLIENT_REDRAWBORDERS ; 
 int CLIENT_REDRAWOVERLAY ; 
 int CLIENT_REDRAWSTATUS ; 
 int CLIENT_REDRAWSTATUSALWAYS ; 
 int CLIENT_REDRAWWINDOW ; 
 int CLIENT_SUSPENDED ; 
 scalar_t__ PANE_STATUS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,struct screen_redraw_ctx*) ; 
 int FUNC5 (struct client*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct client*,struct screen_redraw_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct client *c)
{
	struct screen_redraw_ctx	ctx;
	int				flags;

	if (c->flags & CLIENT_SUSPENDED)
		return;

	flags = FUNC5(c, c->flags);
	FUNC4(c, &ctx);

	if (flags & (CLIENT_REDRAWWINDOW|CLIENT_REDRAWBORDERS)) {
		if (ctx.pane_status != PANE_STATUS_OFF)
			FUNC1(&ctx);
		FUNC0(&ctx);
	}
	if (flags & CLIENT_REDRAWWINDOW)
		FUNC2(&ctx);
	if (ctx.statuslines != 0 &&
	    (flags & (CLIENT_REDRAWSTATUS|CLIENT_REDRAWSTATUSALWAYS)))
		FUNC3(&ctx);
	if (c->overlay_draw != NULL && (flags & CLIENT_REDRAWOVERLAY))
		c->overlay_draw(c, &ctx);
	FUNC7(&c->tty);
}