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
typedef  int /*<<< orphan*/  va_list ;
typedef  int u_int ;
struct screen {int cy; } ;
struct window_pane {struct screen base; int /*<<< orphan*/  modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int backing_written; struct screen* backing; struct screen screen; int /*<<< orphan*/  oy; } ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int dummy; } ;

/* Variables and functions */
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,struct window_pane*,struct screen*) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*,int /*<<< orphan*/ ,struct grid_cell*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,int,int) ; 

void
FUNC9(struct window_pane *wp, const char *fmt, va_list ap)
{
	struct window_mode_entry	*wme = FUNC0(&wp->modes);
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*backing = data->backing;
	struct screen_write_ctx	 	 back_ctx, ctx;
	struct grid_cell		 gc;
	u_int				 old_hsize, old_cy;

	if (backing == &wp->base)
		return;

	FUNC1(&gc, &grid_default_cell, sizeof gc);

	old_hsize = FUNC2(data->backing);
	FUNC5(&back_ctx, NULL, backing);
	if (data->backing_written) {
		/*
		 * On the second or later line, do a CRLF before writing
		 * (so it's on a new line).
		 */
		FUNC3(&back_ctx);
		FUNC4(&back_ctx, 0, 8);
	} else
		data->backing_written = 1;
	old_cy = backing->cy;
	FUNC7(&back_ctx, 0, &gc, fmt, ap);
	FUNC6(&back_ctx);

	data->oy += FUNC2(data->backing) - old_hsize;

	FUNC5(&ctx, wp, &data->screen);

	/*
	 * If the history has changed, draw the top line.
	 * (If there's any history at all, it has changed.)
	 */
	if (FUNC2(data->backing))
		FUNC8(wme, 0, 1);

	/* Write the new lines. */
	FUNC8(wme, old_cy, backing->cy - old_cy + 1);

	FUNC6(&ctx);
}