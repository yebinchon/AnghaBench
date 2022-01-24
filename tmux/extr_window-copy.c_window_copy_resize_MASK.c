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
struct screen {int dummy; } ;
struct window_pane {struct screen base; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {scalar_t__ oy; scalar_t__ searcho; int /*<<< orphan*/  cy; int /*<<< orphan*/  searchy; scalar_t__ cx; scalar_t__ searchx; int /*<<< orphan*/ * searchmark; struct screen* backing; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct window_mode_entry*,struct screen_write_ctx*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct window_mode_entry *wme, u_int sx, u_int sy)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	struct screen_write_ctx	 	 ctx;
	int				 search;

	FUNC1(s, sx, sy, 1);
	if (data->backing != &wp->base)
		FUNC1(data->backing, sx, sy, 1);

	if (data->cy > sy - 1)
		data->cy = sy - 1;
	if (data->cx > sx)
		data->cx = sx;
	if (data->oy > FUNC0(data->backing))
		data->oy = FUNC0(data->backing);

	search = (data->searchmark != NULL);
	FUNC6(wme);
	FUNC5(wme);

	FUNC3(&ctx, NULL, s);
	FUNC9(wme, &ctx, 0, FUNC2(s) - 1);
	FUNC4(&ctx);

	if (search)
		FUNC8(wme, NULL);
	data->searchx = data->cx;
	data->searchy = data->cy;
	data->searcho = data->oy;

	FUNC7(wme);
}