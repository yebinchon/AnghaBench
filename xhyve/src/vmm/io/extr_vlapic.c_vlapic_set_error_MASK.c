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
typedef  int uint32_t ;
struct vlapic {int esr_pending; int esr_firing; int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int APIC_LVT_DM_FIXED ; 
 int /*<<< orphan*/  APIC_OFFSET_ERROR_LVT ; 
 int /*<<< orphan*/  VLAPIC_INTR_ERROR ; 
 scalar_t__ FUNC0 (struct vlapic*,int) ; 
 int FUNC1 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct vlapic *vlapic, uint32_t mask)
{
	uint32_t lvt;

	vlapic->esr_pending |= mask;
	if (vlapic->esr_firing)
		return;
	vlapic->esr_firing = 1;

	// The error LVT always uses the fixed delivery mode.
	lvt = FUNC1(vlapic, APIC_OFFSET_ERROR_LVT);
	if (FUNC0(vlapic, lvt | APIC_LVT_DM_FIXED)) {
		FUNC2(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_ERROR, 1);
	}
	vlapic->esr_firing = 0;
}