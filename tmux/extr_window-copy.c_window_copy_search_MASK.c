#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct window_pane {TYPE_1__* window; int /*<<< orphan*/  searchstr; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {int /*<<< orphan*/  searchstr; scalar_t__ cy; scalar_t__ oy; struct screen* backing; scalar_t__ cx; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {struct grid* grid; } ;
struct grid {scalar_t__ sy; scalar_t__ hsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen*) ; 
 scalar_t__ FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct screen*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct screen*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct window_mode_entry*) ; 
 int FUNC13 (struct window_mode_entry*,struct grid*,struct grid*,scalar_t__,scalar_t__,scalar_t__,int,int,int) ; 
 scalar_t__ FUNC14 (struct window_mode_entry*,struct screen*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct window_mode_entry *wme, int direction)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = data->backing, ss;
	struct screen_write_ctx		 ctx;
	struct grid			*gd = s->grid;
	u_int				 fx, fy, endline;
	int				 wrapflag, cis, found;

	FUNC0(wp->searchstr);
	wp->searchstr = FUNC15(data->searchstr);

	fx = data->cx;
	fy = FUNC3(data->backing) - data->oy + data->cy;

	FUNC4(&ss, FUNC8("%s", data->searchstr), 1, 0);
	FUNC6(&ctx, NULL, &ss);
	FUNC5(&ctx, -1, &grid_default_cell, "%s", data->searchstr);
	FUNC7(&ctx);

	wrapflag = FUNC1(wp->window->options, "wrap-search");
	cis = FUNC9(data->searchstr);

	if (direction) {
		FUNC11(s, &fx, &fy, wrapflag);
		endline = gd->hsize + gd->sy - 1;
	} else {
		FUNC10(s, &fx, &fy, wrapflag);
		endline = 0;
	}
	found = FUNC13(wme, gd, ss.grid, fx, fy, endline, cis,
	    wrapflag, direction);

	if (FUNC14(wme, &ss))
		FUNC12(wme);

	FUNC2(&ss);
	return (found);
}