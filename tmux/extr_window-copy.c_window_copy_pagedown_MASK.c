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
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; scalar_t__ lastcx; scalar_t__ lastsx; struct screen* backing; int /*<<< orphan*/  rectflag; struct screen screen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 int FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 scalar_t__ FUNC3 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,int) ; 

__attribute__((used)) static int
FUNC6(struct window_mode_entry *wme, int half_page,
    int scroll_exit)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	u_int				 n, ox, oy, px, py;

	oy = FUNC0(data->backing) + data->cy - data->oy;
	ox = FUNC3(wme, oy);

	if (data->cx != ox) {
		data->lastcx = data->cx;
		data->lastsx = ox;
	}
	data->cx = data->lastcx;

	n = 1;
	if (FUNC1(s) > 2) {
		if (half_page)
			n = FUNC1(s) / 2;
		else
			n = FUNC1(s) - 2;
	}

	if (data->oy < n) {
		data->oy = 0;
		if (data->cy + (n - data->oy) >= FUNC1(data->backing))
			data->cy = FUNC1(data->backing) - 1;
		else
			data->cy += n - data->oy;
	} else
		data->oy -= n;

	if (data->screen.sel == NULL || !data->rectflag) {
		py = FUNC0(data->backing) + data->cy - data->oy;
		px = FUNC3(wme, py);
		if ((data->cx >= data->lastsx && data->cx != px) ||
		    data->cx > px)
			FUNC2(wme);
	}

	if (scroll_exit && data->oy == 0)
		return (1);
	FUNC5(wme, 1);
	FUNC4(wme);
	return (0);
}