#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vhpet {int freq_sbt; TYPE_1__* timer; } ;
typedef  int sbintime_t ;
struct TYPE_2__ {scalar_t__ comprate; int compval; int callout_sbt; int /*<<< orphan*/  arg; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vhpet*,int,int) ; 
 int /*<<< orphan*/  vhpet_handler ; 

__attribute__((used)) static void
FUNC2(struct vhpet *vhpet, int n, uint32_t counter, sbintime_t now)
{
	sbintime_t delta;

	if (vhpet->timer[n].comprate != 0)
		FUNC1(vhpet, n, counter);
	else {
		/*
		 * In one-shot mode it is the guest's responsibility to make
		 * sure that the comparator value is not in the "past". The
		 * hardware doesn't have any belt-and-suspenders to deal with
		 * this so we don't either.
		 */
	}

	delta = (vhpet->timer[n].compval - counter) * vhpet->freq_sbt;
	vhpet->timer[n].callout_sbt = now + delta;
	FUNC0(&vhpet->timer[n].callout, vhpet->timer[n].callout_sbt,
	    0, vhpet_handler, &vhpet->timer[n].arg, C_ABSOLUTE);
}