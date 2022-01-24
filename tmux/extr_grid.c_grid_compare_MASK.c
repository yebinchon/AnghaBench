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
typedef  size_t u_int ;
struct grid_line {scalar_t__ cellsize; } ;
struct grid_cell {int dummy; } ;
struct grid {scalar_t__ sx; scalar_t__ sy; struct grid_line* linedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid_cell*,struct grid_cell*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,size_t,size_t,struct grid_cell*) ; 

int
FUNC2(struct grid *ga, struct grid *gb)
{
	struct grid_line	*gla, *glb;
	struct grid_cell	 gca, gcb;
	u_int			 xx, yy;

	if (ga->sx != gb->sx || ga->sy != gb->sy)
		return (1);

	for (yy = 0; yy < ga->sy; yy++) {
		gla = &ga->linedata[yy];
		glb = &gb->linedata[yy];
		if (gla->cellsize != glb->cellsize)
			return (1);
		for (xx = 0; xx < gla->cellsize; xx++) {
			FUNC1(ga, xx, yy, &gca);
			FUNC1(gb, xx, yy, &gcb);
			if (!FUNC0(&gca, &gcb))
				return (1);
		}
	}

	return (0);
}