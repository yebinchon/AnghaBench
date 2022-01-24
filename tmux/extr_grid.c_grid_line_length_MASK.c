#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_3__ {int size; char* data; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {scalar_t__ sx; } ;
struct TYPE_4__ {scalar_t__ cellsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 TYPE_2__* FUNC1 (struct grid*,scalar_t__) ; 

u_int
FUNC2(struct grid *gd, u_int py)
{
	struct grid_cell	gc;
	u_int			px;

	px = FUNC1(gd, py)->cellsize;
	if (px > gd->sx)
		px = gd->sx;
	while (px > 0) {
		FUNC0(gd, px - 1, py, &gc);
		if (gc.data.size != 1 || *gc.data.data != ' ')
			break;
		px--;
	}
	return (px);
}