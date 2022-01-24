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
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct screen {int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {scalar_t__ oy; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  backing; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,struct screen_write_ctx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct window_mode_entry *wme, u_int ny)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	struct screen_write_ctx		 ctx;

	if (ny > FUNC0(data->backing))
		return;

	if (data->oy > FUNC0(data->backing) - ny)
		ny = FUNC0(data->backing) - data->oy;
	if (ny == 0)
		return;
	data->oy += ny;

	FUNC6(wme, 0);

	FUNC4(&ctx, wp, NULL);
	FUNC2(&ctx, 0, 0, 0);
	FUNC3(&ctx, ny, 8);
	FUNC8(wme, &ctx, 0, ny);
	if (s->sel != NULL && FUNC1(s) > ny)
		FUNC7(wme, &ctx, ny);
	else if (ny == 1) /* nuke position */
		FUNC7(wme, &ctx, 1);
	FUNC2(&ctx, data->cx, data->cy, 0);
	FUNC5(&ctx);
}