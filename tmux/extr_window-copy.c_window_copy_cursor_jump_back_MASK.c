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
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; scalar_t__ jumpchar; struct screen* backing; } ;
struct screen {int /*<<< orphan*/  grid; } ;
struct TYPE_2__ {int size; scalar_t__* data; } ;
struct grid_cell {int flags; TYPE_1__ data; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC5(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*back_s = data->backing;
	struct grid_cell		 gc;
	u_int				 px, py;

	px = data->cx;
	py = FUNC1(back_s) + data->cy - data->oy;

	if (px > 0)
		px--;

	for (;;) {
		FUNC0(back_s->grid, px, py, &gc);
		if (!(gc.flags & GRID_FLAG_PADDING) &&
		    gc.data.size == 1 && *gc.data.data == data->jumpchar) {
			FUNC3(wme, px, data->cy);
			if (FUNC4(wme, 1))
				FUNC2(wme, data->cy, 1);
			return;
		}
		if (px == 0)
			break;
		px--;
	}
}