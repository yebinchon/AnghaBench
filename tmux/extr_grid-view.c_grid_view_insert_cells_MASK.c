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
struct grid {int sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,int,int,int,int,int) ; 
 int FUNC2 (struct grid*,int) ; 
 int FUNC3 (struct grid*,int) ; 

void
FUNC4(struct grid *gd, u_int px, u_int py, u_int nx, u_int bg)
{
	u_int	sx;

	px = FUNC2(gd, px);
	py = FUNC3(gd, py);

	sx = FUNC2(gd, gd->sx);

	if (px >= sx - 1)
		FUNC0(gd, px, py, 1, 1, bg);
	else
		FUNC1(gd, px + nx, px, py, sx - px - nx, bg);
}