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
typedef  int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int dummy; } ;
struct window_copy_mode_data {int oy; int /*<<< orphan*/  rectflag; int /*<<< orphan*/  backing; struct screen screen; } ;

/* Variables and functions */
 int WINDOW_COPY_REL_POS_ABOVE ; 
 int WINDOW_COPY_REL_POS_BELOW ; 
 int WINDOW_COPY_REL_POS_ON_SCREEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct screen*) ; 
 int FUNC2 (struct screen*) ; 

__attribute__((used)) static int
FUNC3(struct window_mode_entry *wme, u_int *selx,
    u_int *sely)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = &data->screen;
	u_int 				 sx, sy, ty;
	int				 relpos;

	sx = *selx;
	sy = *sely;

	ty = FUNC0(data->backing) - data->oy;
	if (sy < ty) {
		relpos = WINDOW_COPY_REL_POS_ABOVE;
		if (!data->rectflag)
			sx = 0;
		sy = 0;
	} else if (sy > ty + FUNC2(s) - 1) {
		relpos = WINDOW_COPY_REL_POS_BELOW;
		if (!data->rectflag)
			sx = FUNC1(s) - 1;
		sy = FUNC2(s) - 1;
	} else {
		relpos = WINDOW_COPY_REL_POS_ON_SCREEN;
		sy -= ty;
	}

	*selx = sx;
	*sely = sy;
	return (relpos);
}