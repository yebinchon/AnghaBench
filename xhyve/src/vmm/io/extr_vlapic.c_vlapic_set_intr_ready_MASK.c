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
struct TYPE_2__ {int (* set_intr_ready ) (struct vlapic*,int,int) ;} ;
struct vlapic {TYPE_1__ ops; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; int irr0; int tmr0; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ESR_RECEIVE_ILLEGAL_VECTOR ; 
 int APIC_SVR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (struct vlapic*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vlapic*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct vlapic *vlapic, int vector, bool level)
{
	struct LAPIC *lapic;
	uint32_t *irrptr, *tmrptr, mask;
	int idx;

	FUNC0(vector >= 0 && vector < 256, ("invalid vector %d", vector));

	lapic = vlapic->apic_page;
	if (!(lapic->svr & APIC_SVR_ENABLE)) {
		FUNC1(vlapic, "vlapic is software disabled, ignoring "
		    "interrupt %d", vector);
		return (0);
	}

	if (vector < 16) {
		FUNC6(vlapic, APIC_ESR_RECEIVE_ILLEGAL_VECTOR);
		FUNC1(vlapic, "vlapic ignoring interrupt to vector %d",
		    vector);
		return (1);
	}

	if (vlapic->ops.set_intr_ready)
		return ((*vlapic->ops.set_intr_ready)(vlapic, vector, level));

	idx = (vector / 32) * 4;
	mask = 1 << (vector % 32);

	irrptr = &lapic->irr0;
	FUNC4(&irrptr[idx], mask);

	/*
	 * Verify that the trigger-mode of the interrupt matches with
	 * the vlapic TMR registers.
	 */
	tmrptr = &lapic->tmr0;
	if ((tmrptr[idx] & mask) != (level ? mask : 0)) {
		FUNC2(vlapic, "vlapic TMR[%d] is 0x%08x but "
		    "interrupt is %s-triggered", idx / 4, tmrptr[idx],
		    level ? "level" : "edge");
	}

	FUNC3(vlapic, "vlapic_set_intr_ready");
	return (1);
}