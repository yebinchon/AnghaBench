#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct TYPE_4__ {int /*<<< orphan*/  grid; scalar_t__ mode; } ;
struct window_pane {int id; int sx; TYPE_1__ status_screen; void* status_size; } ;
struct window {int /*<<< orphan*/  options; struct window_pane* active; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {int /*<<< orphan*/  grid; } ;
struct grid_cell {int /*<<< orphan*/  attr; } ;
struct format_tree {int dummy; } ;
struct client {int dummy; } ;

/* Variables and functions */
 int FORMAT_PANE ; 
 int /*<<< orphan*/  FORMAT_STATUS ; 
 int /*<<< orphan*/  GRID_ATTR_CHARSET ; 
 struct format_tree* FUNC0 (struct client*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct grid_cell*,void*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct screen*,TYPE_1__*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct screen*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct screen_write_ctx*,struct grid_cell*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct screen_write_ctx*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct grid_cell*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC16(struct client *c, struct window *w,
    struct window_pane *wp)
{
	struct grid_cell	 gc;
	const char		*fmt;
	struct format_tree	*ft;
	char			*expanded;
	u_int			 width, i;
	struct screen_write_ctx	 ctx;
	struct screen		 old;

	if (wp == w->active)
		FUNC15(&gc, w->options, "pane-active-border-style");
	else
		FUNC15(&gc, w->options, "pane-border-style");

	fmt = FUNC8(w->options, "pane-border-format");

	ft = FUNC0(c, NULL, FORMAT_PANE|wp->id, FORMAT_STATUS);
	FUNC1(ft, c, NULL, NULL, wp);

	expanded = FUNC3(ft, fmt);
	if (wp->sx < 4)
		wp->status_size = width = 0;
	else
		wp->status_size = width = wp->sx - 4;

	FUNC7(&old, &wp->status_screen, sizeof old);
	FUNC10(&wp->status_screen, width, 1, 0);
	wp->status_screen.mode = 0;

	FUNC13(&ctx, NULL, &wp->status_screen);

	gc.attr |= GRID_ATTR_CHARSET;
	for (i = 0; i < width; i++)
		FUNC12(&ctx, &gc, 'q');
	gc.attr &= ~GRID_ATTR_CHARSET;

	FUNC11(&ctx, 0, 0, 0);
	FUNC2(&ctx, &gc, width, expanded, NULL);
	FUNC14(&ctx);

	FUNC5(expanded);
	FUNC4(ft);

	if (FUNC6(wp->status_screen.grid, old.grid) == 0) {
		FUNC9(&old);
		return (0);
	}
	FUNC9(&old);
	return (1);
}