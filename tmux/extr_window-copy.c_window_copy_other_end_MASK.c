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
struct window_copy_mode_data {scalar_t__ lineflag; int cursordrag; scalar_t__ endselx; scalar_t__ endsely; scalar_t__ selx; scalar_t__ sely; scalar_t__ cy; scalar_t__ oy; int /*<<< orphan*/  backing; scalar_t__ cx; struct screen screen; } ;

/* Variables and functions */
#define  CURSORDRAG_ENDSEL 130 
#define  CURSORDRAG_NONE 129 
#define  CURSORDRAG_SEL 128 
 scalar_t__ LINE_SEL_LEFT_RIGHT ; 
 scalar_t__ LINE_SEL_NONE ; 
 scalar_t__ LINE_SEL_RIGHT_LEFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	u_int				 selx, sely, cy, yy, hsize;

	if (s->sel == NULL && data->lineflag == LINE_SEL_NONE)
		return;

	if (data->lineflag == LINE_SEL_LEFT_RIGHT)
		data->lineflag = LINE_SEL_RIGHT_LEFT;
	else if (data->lineflag == LINE_SEL_RIGHT_LEFT)
		data->lineflag = LINE_SEL_LEFT_RIGHT;

	switch (data->cursordrag) {
		case CURSORDRAG_NONE:
		case CURSORDRAG_SEL:
			data->cursordrag = CURSORDRAG_ENDSEL;
			break;
		case CURSORDRAG_ENDSEL:
			data->cursordrag = CURSORDRAG_SEL;
			break;
	}

	selx = data->endselx;
	sely = data->endsely;
	if (data->cursordrag == CURSORDRAG_SEL) {
		selx = data->selx;
		sely = data->sely;
	}

	cy = data->cy;
	yy = FUNC0(data->backing) + data->cy - data->oy;

	data->cx = selx;

	hsize = FUNC0(data->backing);
	if (sely < hsize - data->oy) { /* above */
		data->oy = hsize - sely;
		data->cy = 0;
	} else if (sely > hsize - data->oy + FUNC1(s)) { /* below */
		data->oy = hsize - sely + FUNC1(s) - 1;
		data->cy = FUNC1(s) - 1;
	} else
		data->cy = cy + sely - yy;

	FUNC3(wme, 1);
	FUNC2(wme);
}