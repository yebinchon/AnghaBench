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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vmx {int dummy; } ;
struct vlapic {scalar_t__ apic_page; } ;

/* Variables and functions */
#define  APIC_OFFSET_CMCI_LVT 142 
#define  APIC_OFFSET_DFR 141 
#define  APIC_OFFSET_ERROR_LVT 140 
#define  APIC_OFFSET_ESR 139 
#define  APIC_OFFSET_ICR_LOW 138 
#define  APIC_OFFSET_ID 137 
#define  APIC_OFFSET_LDR 136 
#define  APIC_OFFSET_LINT0_LVT 135 
#define  APIC_OFFSET_LINT1_LVT 134 
#define  APIC_OFFSET_PERF_LVT 133 
 int APIC_OFFSET_SELF_IPI ; 
#define  APIC_OFFSET_SVR 132 
#define  APIC_OFFSET_THERM_LVT 131 
#define  APIC_OFFSET_TIMER_DCR 130 
#define  APIC_OFFSET_TIMER_ICR 129 
#define  APIC_OFFSET_TIMER_LVT 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HANDLED ; 
 int UNHANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct vmx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*) ; 
 int FUNC5 (struct vlapic*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC8 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vlapic*) ; 
 scalar_t__ FUNC12 (struct vmx*,int) ; 

__attribute__((used)) static int
FUNC13(struct vmx *vmx, int vcpuid, struct vlapic *vlapic,
    uint64_t qual)
{
	int error, handled, offset;
	uint32_t *apic_regs, vector;
	bool retu;

	handled = HANDLED;
	offset = FUNC0(qual);

	if (!FUNC1(vmx, vcpuid)) {
		/*
		 * In general there should not be any APIC write VM-exits
		 * unless APIC-access virtualization is enabled.
		 *
		 * However self-IPI virtualization can legitimately trigger
		 * an APIC-write VM-exit so treat it specially.
		 */
		if (FUNC12(vmx, vcpuid) &&
		    offset == APIC_OFFSET_SELF_IPI) {
			apic_regs = (uint32_t *)(vlapic->apic_page);
			vector = apic_regs[APIC_OFFSET_SELF_IPI / 4];
			FUNC10(vlapic, vector);
			return (HANDLED);
		} else
			return (UNHANDLED);
	}

	switch (offset) {
	case APIC_OFFSET_ID:
		FUNC7(vlapic);
		break;
	case APIC_OFFSET_LDR:
		FUNC8(vlapic);
		break;
	case APIC_OFFSET_DFR:
		FUNC3(vlapic);
		break;
	case APIC_OFFSET_SVR:
		FUNC11(vlapic);
		break;
	case APIC_OFFSET_ESR:
		FUNC4(vlapic);
		break;
	case APIC_OFFSET_ICR_LOW:
		retu = false;
		error = FUNC5(vlapic, &retu);
		if (error != 0 || retu)
			handled = UNHANDLED;
		break;
	case APIC_OFFSET_CMCI_LVT:
	case APIC_OFFSET_TIMER_LVT:
	case APIC_OFFSET_THERM_LVT:
	case APIC_OFFSET_PERF_LVT:
	case APIC_OFFSET_LINT0_LVT:
	case APIC_OFFSET_LINT1_LVT:
	case APIC_OFFSET_ERROR_LVT:
		FUNC9(vlapic, ((uint32_t) offset));
		break;
	case APIC_OFFSET_TIMER_ICR:
		FUNC6(vlapic);
		break;
	case APIC_OFFSET_TIMER_DCR:
		FUNC2(vlapic);
		break;
	default:
		handled = UNHANDLED;
		break;
	}
	return (handled);
}