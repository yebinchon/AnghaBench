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
typedef  int uint64_t ;
typedef  void* uint32_t ;
struct vlapic {struct LAPIC* apic_page; } ;
struct LAPIC {int icr_hi; void* dcr_timer; void* icr_timer; void* icr_lo; void* svr; void* dfr; void* ldr; void* id; } ;

/* Variables and functions */
#define  APIC_OFFSET_APR 175 
#define  APIC_OFFSET_CMCI_LVT 174 
#define  APIC_OFFSET_DFR 173 
#define  APIC_OFFSET_EOI 172 
#define  APIC_OFFSET_ERROR_LVT 171 
#define  APIC_OFFSET_ESR 170 
#define  APIC_OFFSET_ICR_HI 169 
#define  APIC_OFFSET_ICR_LOW 168 
#define  APIC_OFFSET_ID 167 
#define  APIC_OFFSET_IRR0 166 
#define  APIC_OFFSET_IRR1 165 
#define  APIC_OFFSET_IRR2 164 
#define  APIC_OFFSET_IRR3 163 
#define  APIC_OFFSET_IRR4 162 
#define  APIC_OFFSET_IRR5 161 
#define  APIC_OFFSET_IRR6 160 
#define  APIC_OFFSET_IRR7 159 
#define  APIC_OFFSET_ISR0 158 
#define  APIC_OFFSET_ISR1 157 
#define  APIC_OFFSET_ISR2 156 
#define  APIC_OFFSET_ISR3 155 
#define  APIC_OFFSET_ISR4 154 
#define  APIC_OFFSET_ISR5 153 
#define  APIC_OFFSET_ISR6 152 
#define  APIC_OFFSET_ISR7 151 
#define  APIC_OFFSET_LDR 150 
#define  APIC_OFFSET_LINT0_LVT 149 
#define  APIC_OFFSET_LINT1_LVT 148 
#define  APIC_OFFSET_PERF_LVT 147 
#define  APIC_OFFSET_PPR 146 
#define  APIC_OFFSET_RRR 145 
#define  APIC_OFFSET_SELF_IPI 144 
#define  APIC_OFFSET_SVR 143 
#define  APIC_OFFSET_THERM_LVT 142 
#define  APIC_OFFSET_TIMER_CCR 141 
#define  APIC_OFFSET_TIMER_DCR 140 
#define  APIC_OFFSET_TIMER_ICR 139 
#define  APIC_OFFSET_TIMER_LVT 138 
#define  APIC_OFFSET_TMR0 137 
#define  APIC_OFFSET_TMR1 136 
#define  APIC_OFFSET_TMR2 135 
#define  APIC_OFFSET_TMR3 134 
#define  APIC_OFFSET_TMR4 133 
#define  APIC_OFFSET_TMR5 132 
#define  APIC_OFFSET_TMR6 131 
#define  APIC_OFFSET_TMR7 130 
#define  APIC_OFFSET_TPR 129 
#define  APIC_OFFSET_VER 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int,int) ; 
 int XHYVE_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*) ; 
 void** FUNC5 (struct vlapic*,void*) ; 
 int FUNC6 (struct vlapic*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC8 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC9 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC10 (struct vlapic*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC12 (struct vlapic*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vlapic*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vlapic*) ; 
 scalar_t__ FUNC15 (struct vlapic*) ; 

int
FUNC16(struct vlapic *vlapic, int mmio_access, uint64_t offset,
    uint64_t data, bool *retu)
{
	struct LAPIC	*lapic = vlapic->apic_page;
	uint32_t	*regptr;
	int		retval;

	FUNC0((offset & 0xf) == 0 && offset < XHYVE_PAGE_SIZE,
	    ("vlapic_write: invalid offset %#llx", offset));

	FUNC1(vlapic, "vlapic write offset %#llx, data %#llx",
	    offset, data);

	if (offset > sizeof(*lapic))
		return (0);

	/* Ignore MMIO accesses in x2APIC mode */
	if (FUNC15(vlapic) && mmio_access) {
		FUNC1(vlapic, "MMIO write of %#llx to offset %#llx "
		    "in x2APIC mode", data, offset);
		return (0);
	}

	/*
	 * XXX Generate GP fault for MSR accesses in xAPIC mode
	 */
	if (!FUNC15(vlapic) && !mmio_access) {
		FUNC1(vlapic, "x2APIC MSR write of %#llx to offset %#llx "
		    "in xAPIC mode", data, offset);
		return (0);
	}

	retval = 0;
	switch(offset)
	{
		case APIC_OFFSET_ID:
			lapic->id = (uint32_t) data;
			FUNC8(vlapic);
			break;
		case APIC_OFFSET_TPR:
			FUNC13(vlapic, data & 0xff);
			break;
		case APIC_OFFSET_EOI:
			FUNC11(vlapic);
			break;
		case APIC_OFFSET_LDR:
			lapic->ldr = (uint32_t) data;
			FUNC9(vlapic);
			break;
		case APIC_OFFSET_DFR:
			lapic->dfr = (uint32_t) data;
			FUNC3(vlapic);
			break;
		case APIC_OFFSET_SVR:
			lapic->svr = (uint32_t) data;
			FUNC14(vlapic);
			break;
		case APIC_OFFSET_ICR_LOW: 
			lapic->icr_lo = (uint32_t) data;
			if (FUNC15(vlapic))
				lapic->icr_hi = data >> 32;
			retval = FUNC6(vlapic, retu);
			break;
		case APIC_OFFSET_ICR_HI:
			lapic->icr_hi = (uint32_t) data;
			break;
		case APIC_OFFSET_CMCI_LVT:
		case APIC_OFFSET_TIMER_LVT:
		case APIC_OFFSET_THERM_LVT:
		case APIC_OFFSET_PERF_LVT:
		case APIC_OFFSET_LINT0_LVT:
		case APIC_OFFSET_LINT1_LVT:
		case APIC_OFFSET_ERROR_LVT:
			regptr = FUNC5(vlapic, ((uint32_t) offset));
			*regptr = (uint32_t) data;
			FUNC10(vlapic, ((uint32_t) offset));
			break;
		case APIC_OFFSET_TIMER_ICR:
			lapic->icr_timer = (uint32_t) data;
			FUNC7(vlapic);
			break;

		case APIC_OFFSET_TIMER_DCR:
			lapic->dcr_timer = (uint32_t) data;
			FUNC2(vlapic);
			break;

		case APIC_OFFSET_ESR:
			FUNC4(vlapic);
			break;

		case APIC_OFFSET_SELF_IPI:
			if (FUNC15(vlapic))
				FUNC12(vlapic, data);
			break;

		case APIC_OFFSET_VER:
		case APIC_OFFSET_APR:
		case APIC_OFFSET_PPR:
		case APIC_OFFSET_RRR:
		case APIC_OFFSET_ISR0:
		case APIC_OFFSET_ISR1:
		case APIC_OFFSET_ISR2:
		case APIC_OFFSET_ISR3:
		case APIC_OFFSET_ISR4:
		case APIC_OFFSET_ISR5:
		case APIC_OFFSET_ISR6:
		case APIC_OFFSET_ISR7:
		case APIC_OFFSET_TMR0:
		case APIC_OFFSET_TMR1:
		case APIC_OFFSET_TMR2:
		case APIC_OFFSET_TMR3:
		case APIC_OFFSET_TMR4:
		case APIC_OFFSET_TMR5:
		case APIC_OFFSET_TMR6:
		case APIC_OFFSET_TMR7:
		case APIC_OFFSET_IRR0:
		case APIC_OFFSET_IRR1:
		case APIC_OFFSET_IRR2:
		case APIC_OFFSET_IRR3:
		case APIC_OFFSET_IRR4:
		case APIC_OFFSET_IRR5:
		case APIC_OFFSET_IRR6:
		case APIC_OFFSET_IRR7:
		case APIC_OFFSET_TIMER_CCR:
		default:
			// Read only.
			break;
	}

	return (retval);
}