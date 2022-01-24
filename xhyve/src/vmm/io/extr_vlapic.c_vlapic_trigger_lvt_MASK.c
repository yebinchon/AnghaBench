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
typedef  int /*<<< orphan*/  uint32_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
#define  APIC_LVT_CMCI 134 
 int /*<<< orphan*/  APIC_LVT_DM_FIXED ; 
#define  APIC_LVT_ERROR 133 
#define  APIC_LVT_LINT0 132 
#define  APIC_LVT_LINT1 131 
#define  APIC_LVT_PMC 130 
#define  APIC_LVT_THERMAL 129 
#define  APIC_LVT_TIMER 128 
 int /*<<< orphan*/  APIC_OFFSET_CMCI_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_ERROR_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_LINT0_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_LINT1_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_PERF_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_THERM_LVT ; 
 int /*<<< orphan*/  APIC_OFFSET_TIMER_LVT ; 
 int EINVAL ; 
 int /*<<< orphan*/  LVTS_TRIGGERRED ; 
 int FUNC0 (struct vlapic*) ; 
 scalar_t__ FUNC1 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int
FUNC6(struct vlapic *vlapic, int vector)
{
	uint32_t lvt;

	if (FUNC0(vlapic) == false) {
		/*
		 * When the local APIC is global/hardware disabled,
		 * LINT[1:0] pins are configured as INTR and NMI pins,
		 * respectively.
		*/
		switch (vector) {
			case APIC_LVT_LINT0:
				FUNC3(vlapic->vm, vlapic->vcpuid);
				break;
			case APIC_LVT_LINT1:
				FUNC4(vlapic->vm, vlapic->vcpuid);
				break;
			default:
				break;
		}
		return (0);
	}

	switch (vector) {
	case APIC_LVT_LINT0:
		lvt = FUNC2(vlapic, APIC_OFFSET_LINT0_LVT);
		break;
	case APIC_LVT_LINT1:
		lvt = FUNC2(vlapic, APIC_OFFSET_LINT1_LVT);
		break;
	case APIC_LVT_TIMER:
		lvt = FUNC2(vlapic, APIC_OFFSET_TIMER_LVT);
		lvt |= APIC_LVT_DM_FIXED;
		break;
	case APIC_LVT_ERROR:
		lvt = FUNC2(vlapic, APIC_OFFSET_ERROR_LVT);
		lvt |= APIC_LVT_DM_FIXED;
		break;
	case APIC_LVT_PMC:
		lvt = FUNC2(vlapic, APIC_OFFSET_PERF_LVT);
		break;
	case APIC_LVT_THERMAL:
		lvt = FUNC2(vlapic, APIC_OFFSET_THERM_LVT);
		break;
	case APIC_LVT_CMCI:
		lvt = FUNC2(vlapic, APIC_OFFSET_CMCI_LVT);
		break;
	default:
		return (EINVAL);
	}
	if (FUNC1(vlapic, lvt)) {
		FUNC5(vlapic->vm, vlapic->vcpuid,
		    LVTS_TRIGGERRED, vector, 1);
	}
	return (0);
}