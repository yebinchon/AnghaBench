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
struct vhpet {int /*<<< orphan*/  countbase_sbt; int /*<<< orphan*/  countbase; } ;

/* Variables and functions */
 int VHPET_NUM_TIMERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vhpet*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vhpet *vhpet)
{
	int i;

	vhpet->countbase_sbt = FUNC0();
	for (i = 0; i < VHPET_NUM_TIMERS; i++) {
		/*
		 * Restart the timers based on the value of the main counter
		 * when it stopped counting.
		 */
		FUNC1(vhpet, i, vhpet->countbase,
		    vhpet->countbase_sbt);
	}
}