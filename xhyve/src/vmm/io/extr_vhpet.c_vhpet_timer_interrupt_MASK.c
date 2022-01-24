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
struct vhpet {int isr; int /*<<< orphan*/  vm; TYPE_1__* timer; } ;
struct TYPE_2__ {int msireg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct vhpet*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhpet*,int) ; 
 int FUNC4 (struct vhpet*,int) ; 
 scalar_t__ FUNC5 (struct vhpet*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct vhpet *vhpet, int n)
{
	int pin;

	/* If interrupts are not enabled for this timer then just return. */
	if (!FUNC3(vhpet, n))
		return;

	/*
	 * If a level triggered interrupt is already asserted then just return.
	 */
	if ((vhpet->isr & (1 << n)) != 0) {
		FUNC0(vhpet->vm, "hpet t%d intr is already asserted", n);
		return;
	}

	if (FUNC5(vhpet, n)) {
		FUNC1(vhpet->vm, vhpet->timer[n].msireg >> 32,
		    vhpet->timer[n].msireg & 0xffffffff);
		return;
	}

	pin = FUNC4(vhpet, n);
	if (pin == 0) {
		FUNC0(vhpet->vm, "hpet t%d intr is not routed to ioapic", n);
		return;
	}

	if (FUNC2(vhpet, n)) {
		FUNC7(vhpet->vm, pin);
	} else {
		vhpet->isr |= 1 << n;
		FUNC6(vhpet->vm, pin);
	}
}