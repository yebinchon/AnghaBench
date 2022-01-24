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
struct grid {int flags; int sy; } ;

/* Variables and functions */
 int GRID_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (struct grid*) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct grid*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct grid*,int,int,int) ; 
 int FUNC4 (struct grid*,int) ; 

void
FUNC5(struct grid *gd, u_int rupper, u_int rlower,
    u_int bg)
{
	if (gd->flags & GRID_HISTORY) {
		FUNC0(gd);
		if (rupper == 0 && rlower == gd->sy - 1)
			FUNC2(gd, bg);
		else {
			rupper = FUNC4(gd, rupper);
			rlower = FUNC4(gd, rlower);
			FUNC3(gd, rupper, rlower, bg);
		}
	} else {
		rupper = FUNC4(gd, rupper);
		rlower = FUNC4(gd, rlower);
		FUNC1(gd, rupper, rupper + 1, rlower - rupper, bg);
	}
}