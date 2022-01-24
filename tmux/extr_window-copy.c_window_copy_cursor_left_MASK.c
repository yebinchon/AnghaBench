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
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; TYPE_1__* backing; } ;
struct grid_cell {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct grid_cell*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC7(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	u_int				 py, cx;
	struct grid_cell		 gc;

	py = FUNC1(data->backing) + data->cy - data->oy;
	cx = data->cx;
	while (cx > 0) {
		FUNC0(data->backing->grid, cx, py, &gc);
		if (~gc.flags & GRID_FLAG_PADDING)
			break;
		cx--;
	}
	if (cx == 0 && py > 0) {
		FUNC3(wme, 0);
		FUNC2(wme);
	} else if (cx > 0) {
		FUNC5(wme, cx - 1, data->cy);
		if (FUNC6(wme, 1))
			FUNC4(wme, data->cy, 1);
	}
}