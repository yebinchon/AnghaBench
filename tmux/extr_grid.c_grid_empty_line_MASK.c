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
struct grid {int /*<<< orphan*/  sx; int /*<<< orphan*/ * linedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct grid *gd, u_int py, u_int bg)
{
	FUNC2(&gd->linedata[py], 0, sizeof gd->linedata[py]);
	if (!FUNC0(bg))
		FUNC1(gd, py, gd->sx, bg);
}