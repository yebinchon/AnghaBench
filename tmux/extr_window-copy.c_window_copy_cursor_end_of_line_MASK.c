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
struct TYPE_2__ {int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; scalar_t__ lineflag; scalar_t__ rectflag; TYPE_1__ screen; struct screen* backing; } ;
struct screen {struct grid* grid; } ;
struct grid_line {int flags; } ;
struct grid {scalar_t__ sy; scalar_t__ hsize; } ;

/* Variables and functions */
 int GRID_LINE_WRAPPED ; 
 scalar_t__ LINE_SEL_NONE ; 
 struct grid_line* FUNC0 (struct grid*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC8(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*back_s = data->backing;
	struct grid			*gd = back_s->grid;
	struct grid_line		*gl;
	u_int				 px, py;

	py = FUNC1(back_s) + data->cy - data->oy;
	px = FUNC4(wme, py);

	if (data->cx == px && data->lineflag == LINE_SEL_NONE) {
		if (data->screen.sel != NULL && data->rectflag)
			px = FUNC2(back_s);
		gl = FUNC0(gd, py);
		if (gl->flags & GRID_LINE_WRAPPED) {
			while (py < gd->sy + gd->hsize) {
				gl = FUNC0(gd, py);
				if (~gl->flags & GRID_LINE_WRAPPED)
					break;
				FUNC3(wme, 0);
				py = FUNC1(back_s) + data->cy - data->oy;
			}
			px = FUNC4(wme, py);
		}
	}
	FUNC6(wme, px, data->cy);

	if (FUNC7(wme, 1))
		FUNC5(wme, data->cy, 1);
}