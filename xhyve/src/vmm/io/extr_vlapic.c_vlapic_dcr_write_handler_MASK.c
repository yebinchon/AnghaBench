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
struct vlapic {int /*<<< orphan*/  timer_period_bt; int /*<<< orphan*/  timer_freq_bt; struct LAPIC* apic_page; } ;
struct LAPIC {int /*<<< orphan*/  icr_timer; int /*<<< orphan*/  dcr_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int VLAPIC_BUS_FREQ ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct vlapic *vlapic)
{
	struct LAPIC *lapic;
	int divisor;
	
	lapic = vlapic->apic_page;
	FUNC2(vlapic);

	divisor = FUNC5(lapic->dcr_timer);
	FUNC1(vlapic, "vlapic dcr_timer=%#x, divisor=%d",
	    lapic->dcr_timer, divisor);

	/*
	 * Update the timer frequency and the timer period.
	 *
	 * XXX changes to the frequency divider will not take effect until
	 * the timer is reloaded.
	 */
	FUNC0(((unsigned) (VLAPIC_BUS_FREQ / divisor)), &vlapic->timer_freq_bt);
	vlapic->timer_period_bt = vlapic->timer_freq_bt;
	FUNC4(&vlapic->timer_period_bt, lapic->icr_timer);

	FUNC3(vlapic);
}