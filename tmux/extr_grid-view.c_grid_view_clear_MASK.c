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
typedef  int /*<<< orphan*/  u_int ;
struct grid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct grid*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct grid *gd, u_int px, u_int py, u_int nx, u_int ny,
    u_int bg)
{
	px = FUNC1(gd, px);
	py = FUNC2(gd, py);

	FUNC0(gd, px, py, nx, ny, bg);
}