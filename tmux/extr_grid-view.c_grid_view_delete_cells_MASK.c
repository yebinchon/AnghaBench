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
struct grid {scalar_t__ sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct grid*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct grid*,scalar_t__) ; 

void
FUNC4(struct grid *gd, u_int px, u_int py, u_int nx, u_int bg)
{
	u_int	sx;

	px = FUNC2(gd, px);
	py = FUNC3(gd, py);

	sx = FUNC2(gd, gd->sx);

	FUNC1(gd, px, px + nx, py, sx - px - nx, bg);
	FUNC0(gd, sx - nx, py, px + nx - (sx - nx), 1, bg);
}