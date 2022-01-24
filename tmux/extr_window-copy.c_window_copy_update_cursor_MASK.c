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
struct screen {int dummy; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC5(struct window_mode_entry *wme, u_int cx, u_int cy)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	struct screen_write_ctx		 ctx;
	u_int				 old_cx, old_cy;

	old_cx = data->cx; old_cy = data->cy;
	data->cx = cx; data->cy = cy;
	if (old_cx == FUNC0(s))
		FUNC4(wme, old_cy, 1);
	if (data->cx == FUNC0(s))
		FUNC4(wme, data->cy, 1);
	else {
		FUNC2(&ctx, wp, NULL);
		FUNC1(&ctx, data->cx, data->cy, 0);
		FUNC3(&ctx);
	}
}