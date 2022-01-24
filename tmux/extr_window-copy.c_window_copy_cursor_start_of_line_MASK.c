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
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ lineflag; scalar_t__ cy; scalar_t__ oy; struct screen* backing; } ;
struct screen {struct grid* grid; } ;
struct grid {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int GRID_LINE_WRAPPED ; 
 scalar_t__ LINE_SEL_NONE ; 
 TYPE_1__* FUNC0 (struct grid*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC6(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*back_s = data->backing;
	struct grid			*gd = back_s->grid;
	u_int				 py;

	if (data->cx == 0 && data->lineflag == LINE_SEL_NONE) {
		py = FUNC1(back_s) + data->cy - data->oy;
		while (py > 0 &&
		    FUNC0(gd, py - 1)->flags & GRID_LINE_WRAPPED) {
			FUNC2(wme, 0);
			py = FUNC1(back_s) + data->cy - data->oy;
		}
	}
	FUNC4(wme, 0, data->cy);
	if (FUNC5(wme, 1))
		FUNC3(wme, data->cy, 1);
}