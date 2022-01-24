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
struct grid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct grid*,scalar_t__) ; 

void
FUNC2(struct grid *gd, u_int rupper, u_int rlower,
    u_int bg)
{
	rupper = FUNC1(gd, rupper);
	rlower = FUNC1(gd, rlower);

	FUNC0(gd, rupper + 1, rupper, rlower - rupper, bg);
}