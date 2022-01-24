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
struct grid {size_t hsize; int /*<<< orphan*/ * linedata; int /*<<< orphan*/  hscrolled; scalar_t__ sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void
FUNC3(struct grid *gd, u_int bg)
{
	u_int	yy;

	yy = gd->hsize + gd->sy;
	gd->linedata = FUNC2(gd->linedata, yy + 1,
	    sizeof *gd->linedata);
	FUNC1(gd, yy, bg);

	gd->hscrolled++;
	FUNC0(&gd->linedata[gd->hsize]);
	gd->hsize++;
}