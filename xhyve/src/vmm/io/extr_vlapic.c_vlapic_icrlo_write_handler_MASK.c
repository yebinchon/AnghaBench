#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int vcpu; int rip; } ;
struct TYPE_4__ {TYPE_1__ spinup_ap; } ;
struct vm_exit {TYPE_2__ u; int /*<<< orphan*/  exitcode; } ;
struct vlapic {scalar_t__ vcpuid; scalar_t__ boot_state; int /*<<< orphan*/  vm; struct LAPIC* apic_page; } ;
struct LAPIC {unsigned int icr_lo; scalar_t__ icr_hi; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int APIC_DELMODE_FIXED ; 
 int APIC_DELMODE_INIT ; 
 int APIC_DELMODE_MASK ; 
 int APIC_DELMODE_NMI ; 
 int APIC_DELMODE_STARTUP ; 
 scalar_t__ APIC_DELSTAT_PEND ; 
 int APIC_DESTMODE_LOG ; 
#define  APIC_DEST_ALLESELF 131 
#define  APIC_DEST_ALLISELF 130 
#define  APIC_DEST_DESTFLD 129 
 int APIC_DEST_MASK ; 
#define  APIC_DEST_SELF 128 
 int /*<<< orphan*/  APIC_ESR_SEND_ILLEGAL_VECTOR ; 
 int APIC_LEVEL_DEASSERT ; 
 int APIC_LEVEL_MASK ; 
 int APIC_VECTOR_MASK ; 
 scalar_t__ BS_INIT ; 
 scalar_t__ BS_RUNNING ; 
 scalar_t__ BS_SIPI ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPIS_SENT ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlapic*,char*,int,int) ; 
 int /*<<< orphan*/  VM_EXITCODE_SPINUP_AP ; 
 int VM_MAXCPU ; 
 int XHYVE_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct vm_exit* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 struct vlapic* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (struct vlapic*) ; 

int
FUNC15(struct vlapic *vlapic, bool *retu)
{
	int i;
	bool phys;
	cpuset_t dmask;
	uint64_t icrval;
	uint32_t dest, vec, mode;
	struct vlapic *vlapic2;
	struct vm_exit *vmexit;
	struct LAPIC *lapic;

	lapic = vlapic->apic_page;
	lapic->icr_lo &= ~((unsigned) APIC_DELSTAT_PEND);
	icrval = ((uint64_t)lapic->icr_hi << 32) | lapic->icr_lo;

	if (FUNC14(vlapic))
		dest = icrval >> 32;
	else
		dest = icrval >> (32 + 24);
	vec = icrval & APIC_VECTOR_MASK;
	mode = icrval & APIC_DELMODE_MASK;

	if (mode == APIC_DELMODE_FIXED && vec < 16) {
		FUNC8(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR);
		FUNC4(vlapic, "Ignoring invalid IPI %d", vec);
		return (0);
	}

	FUNC5(vlapic, "icrlo 0x%016llx triggered ipi %d", icrval, vec);

	if (mode == APIC_DELMODE_FIXED || mode == APIC_DELMODE_NMI) {
		switch (icrval & APIC_DEST_MASK) {
		case APIC_DEST_DESTFLD:
			phys = ((icrval & APIC_DESTMODE_LOG) == 0);
			FUNC7(vlapic->vm, &dmask, dest, phys, false,
			    FUNC14(vlapic));
			break;
		case APIC_DEST_SELF:
			FUNC2(((unsigned) vlapic->vcpuid), &dmask);
			break;
		case APIC_DEST_ALLISELF:
			dmask = FUNC9(vlapic->vm);
			break;
		case APIC_DEST_ALLESELF:
			dmask = FUNC9(vlapic->vm);
			FUNC0(((unsigned) vlapic->vcpuid), &dmask);
			break;
		default:
			FUNC3(&dmask);	/* satisfy gcc */
			break;
		}

		while ((i = FUNC1(&dmask)) != 0) {
			i--;
			FUNC0(((unsigned) i), &dmask);
			if (mode == APIC_DELMODE_FIXED) {
				FUNC6(vlapic->vm, i, ((int) vec));
				FUNC13(vlapic->vm, vlapic->vcpuid,
						    IPIS_SENT, i, 1);
				FUNC5(vlapic, "vlapic sending ipi %d "
				    "to vcpuid %d", vec, i);
			} else {
				FUNC11(vlapic->vm, i);
				FUNC4(vlapic, "vlapic sending ipi nmi "
				    "to vcpuid %d", i);
			}
		}

		return (0);	/* handled completely in the kernel */
	}

	if (mode == APIC_DELMODE_INIT) {
		if ((icrval & APIC_LEVEL_MASK) == APIC_LEVEL_DEASSERT)
			return (0);

		if (vlapic->vcpuid == 0 && dest != 0 && dest < VM_MAXCPU) {
			vlapic2 = FUNC12(vlapic->vm, ((int) dest));

			/* move from INIT to waiting-for-SIPI state */
			if (vlapic2->boot_state == BS_INIT) {
				vlapic2->boot_state = BS_SIPI;
			}

			return (0);
		}
	}

	if (mode == APIC_DELMODE_STARTUP) {
		if (vlapic->vcpuid == 0 && dest != 0 && dest < VM_MAXCPU) {
			vlapic2 = FUNC12(vlapic->vm, ((int) dest));

			/*
			 * Ignore SIPIs in any state other than wait-for-SIPI
			 */
			if (vlapic2->boot_state != BS_SIPI)
				return (0);

			vlapic2->boot_state = BS_RUNNING;

			*retu = true;
			vmexit = FUNC10(vlapic->vm, vlapic->vcpuid);
			vmexit->exitcode = VM_EXITCODE_SPINUP_AP;
			vmexit->u.spinup_ap.vcpu = (int) dest;
			vmexit->u.spinup_ap.rip = vec << XHYVE_PAGE_SHIFT;

			return (0);
		}
	}

	/*
	 * This will cause a return to userland.
	 */
	return (1);
}