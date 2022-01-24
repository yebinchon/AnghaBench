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
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int /*<<< orphan*/ * sel; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; scalar_t__ lastcx; scalar_t__ lastsx; scalar_t__ lineflag; scalar_t__ sely; int /*<<< orphan*/  backing; int /*<<< orphan*/  rectflag; struct screen screen; } ;

/* Variables and functions */
 scalar_t__ LINE_SEL_LEFT_RIGHT ; 
 scalar_t__ LINE_SEL_RIGHT_LEFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*) ; 
 scalar_t__ FUNC4 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,scalar_t__,int) ; 
 scalar_t__ FUNC9 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC10(struct window_mode_entry *wme, int scroll_only)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	u_int				 ox, oy, px, py;

	oy = FUNC0(data->backing) + data->cy - data->oy;
	ox = FUNC4(wme, oy);
	if (data->cx != ox) {
		data->lastcx = data->cx;
		data->lastsx = ox;
	}

	if (data->lineflag == LINE_SEL_LEFT_RIGHT && oy == data->sely)
		FUNC5(wme);

	if (scroll_only || data->cy == 0) {
		data->cx = data->lastcx;
		FUNC7(wme, 1);
		if (scroll_only) {
			if (data->cy == FUNC1(s) - 1)
				FUNC6(wme, data->cy, 1);
			else
				FUNC6(wme, data->cy, 2);
		}
	} else {
		FUNC8(wme, data->lastcx, data->cy - 1);
		if (FUNC9(wme, 1)) {
			if (data->cy == FUNC1(s) - 1)
				FUNC6(wme, data->cy, 1);
			else
				FUNC6(wme, data->cy, 2);
		}
	}

	if (data->screen.sel == NULL || !data->rectflag) {
		py = FUNC0(data->backing) + data->cy - data->oy;
		px = FUNC4(wme, py);
		if ((data->cx >= data->lastsx && data->cx != px) ||
		    data->cx > px)
			FUNC2(wme);
	}

	if (data->lineflag == LINE_SEL_LEFT_RIGHT)
		FUNC2(wme);
	else if (data->lineflag == LINE_SEL_RIGHT_LEFT)
		FUNC3(wme);
}