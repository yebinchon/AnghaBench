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
typedef  int u_int ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct screen {int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {int oy; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,struct screen_write_ctx*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,struct screen_write_ctx*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct window_mode_entry *wme, u_int ny)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	struct screen_write_ctx		 ctx;

	if (data->oy < ny)
		ny = data->oy;
	if (ny == 0)
		return;
	data->oy -= ny;

	FUNC5(wme, 0);

	FUNC3(&ctx, wp, NULL);
	FUNC1(&ctx, 0, 0, 0);
	FUNC2(&ctx, ny, 8);
	FUNC7(wme, &ctx, FUNC0(s) - ny, ny);
	FUNC6(wme, &ctx, 0);
	if (FUNC0(s) > 1)
		FUNC6(wme, &ctx, 1);
	if (FUNC0(s) > 3)
		FUNC6(wme, &ctx, FUNC0(s) - 2);
	if (s->sel != NULL && FUNC0(s) > ny)
		FUNC6(wme, &ctx, FUNC0(s) - ny - 1);
	FUNC1(&ctx, data->cx, data->cy, 0);
	FUNC4(&ctx);
}