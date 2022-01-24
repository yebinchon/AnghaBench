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
struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {unsigned int ldr; } ;

/* Variables and functions */
 scalar_t__ APIC_LDR_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (struct vlapic*,char*,unsigned int) ; 
 scalar_t__ FUNC1 (struct vlapic*) ; 
 unsigned int FUNC2 (struct vlapic*) ; 

void
FUNC3(struct vlapic *vlapic)
{
	struct LAPIC *lapic;

	lapic = vlapic->apic_page;

	/* LDR is read-only in x2apic mode */
	if (FUNC1(vlapic)) {
		FUNC0(vlapic, "ignoring write to LDR in x2apic mode: %#x",
		    lapic->ldr);
		lapic->ldr = FUNC2(vlapic);
	} else {
		lapic->ldr &= ~((unsigned) APIC_LDR_RESERVED);
		FUNC0(vlapic, "vlapic LDR set to %#x", lapic->ldr);
	}
}