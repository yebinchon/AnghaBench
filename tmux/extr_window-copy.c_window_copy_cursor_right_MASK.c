#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; TYPE_1__* backing; TYPE_2__ screen; scalar_t__ rectflag; } ;
struct grid_cell {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 
 scalar_t__ FUNC6 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC10(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	u_int				 px, py, yy, cx, cy;
	struct grid_cell		 gc;

	py = FUNC1(data->backing) + data->cy - data->oy;
	yy = FUNC1(data->backing) + FUNC3(data->backing) - 1;
	if (data->screen.sel != NULL && data->rectflag)
		px = FUNC2(&data->screen);
	else
		px = FUNC6(wme, py);

	if (data->cx >= px && py < yy) {
		FUNC5(wme);
		FUNC4(wme, 0);
	} else if (data->cx < px) {
		cx = data->cx + 1;
		cy = FUNC1(data->backing) + data->cy - data->oy;
		while (cx < px) {
			FUNC0(data->backing->grid, cx, cy, &gc);
			if (~gc.flags & GRID_FLAG_PADDING)
				break;
			cx++;
		}
		FUNC8(wme, cx, data->cy);
		if (FUNC9(wme, 1))
			FUNC7(wme, data->cy, 1);
	}
}