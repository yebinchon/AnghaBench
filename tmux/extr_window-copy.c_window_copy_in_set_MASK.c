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
typedef  int /*<<< orphan*/  u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {TYPE_1__* backing; } ;
struct grid_cell {int flags; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  grid; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct grid_cell*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct window_mode_entry *wme, u_int px, u_int py,
    const char *set)
{
	struct window_copy_mode_data	*data = wme->data;
	struct grid_cell		 gc;

	FUNC0(data->backing->grid, px, py, &gc);
	if (gc.flags & GRID_FLAG_PADDING)
		return (0);
	return (FUNC1(set, &gc.data));
}