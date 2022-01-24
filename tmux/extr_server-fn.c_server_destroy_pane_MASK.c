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
typedef  int /*<<< orphan*/  time_t ;
struct window_pane {int fd; int flags; int /*<<< orphan*/  status; int /*<<< orphan*/  base; int /*<<< orphan*/  options; int /*<<< orphan*/ * event; struct window* window; } ;
struct window {int /*<<< orphan*/  panes; } ;
struct screen_write_ctx {int /*<<< orphan*/  s; } ;
struct grid_cell {int dummy; } ;

/* Variables and functions */
 int PANE_REDRAW ; 
 int PANE_STATUSDRAWN ; 
 int PANE_STATUSREADY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC8 (struct window_pane*) ; 
 int /*<<< orphan*/  FUNC9 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct window_pane*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct screen_write_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct screen_write_ctx*,int,struct grid_cell*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (struct window*) ; 
 int /*<<< orphan*/  FUNC20 (struct window*) ; 
 int /*<<< orphan*/  FUNC21 (struct window*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct window*,struct window_pane*) ; 

void
FUNC25(struct window_pane *wp, int notify)
{
	struct window		*w = wp->window;
	struct screen_write_ctx	 ctx;
	struct grid_cell	 gc;
	time_t			 t;
	char			 tim[26];

	if (wp->fd != -1) {
#ifdef HAVE_UTEMPTER
		utempter_remove_record(wp->fd);
#endif
		FUNC5(wp->event);
		wp->event = NULL;
		FUNC6(wp->fd);
		wp->fd = -1;
	}

	if (FUNC11(wp->options, "remain-on-exit")) {
		if (~wp->flags & PANE_STATUSREADY)
			return;

		if (wp->flags & PANE_STATUSDRAWN)
			return;
		wp->flags |= PANE_STATUSDRAWN;

		if (notify)
			FUNC10("pane-died", wp);

		FUNC17(&ctx, wp, &wp->base);
		FUNC16(&ctx, 0, FUNC12(ctx.s) - 1);
		FUNC13(&ctx, 0, FUNC12(ctx.s) - 1, 0);
		FUNC14(&ctx, 1, 8);
		FUNC9(&gc, &grid_default_cell, sizeof gc);

		FUNC22(&t);
		FUNC7(&t, tim);

		if (FUNC2(wp->status)) {
			FUNC15(&ctx, -1, &gc,
			    "Pane is dead (status %d, %s)",
			    FUNC1(wp->status),
			    tim);
		} else if (FUNC3(wp->status)) {
			FUNC15(&ctx, -1, &gc,
			    "Pane is dead (signal %d, %s)",
			    FUNC4(wp->status),
			    tim);
		}

		FUNC18(&ctx);
		wp->flags |= PANE_REDRAW;
		return;
	}

	if (notify)
		FUNC10("pane-exited", wp);

	FUNC21(w);
	FUNC8(wp);
	FUNC24(w, wp);

	if (FUNC0(&w->panes))
		FUNC19(w);
	else
		FUNC20(w);
}