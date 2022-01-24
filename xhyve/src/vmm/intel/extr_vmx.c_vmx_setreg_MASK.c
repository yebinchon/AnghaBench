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
struct vmx {int dummy; } ;
typedef  scalar_t__ hv_x86_reg_t ;
typedef  int /*<<< orphan*/  hv_vcpuid_t ;

/* Variables and functions */
 int EFER_LMA ; 
 scalar_t__ HV_X86_REGISTERS_MAX ; 
 int VMCS_ENTRY_CTLS ; 
 int FUNC0 (int) ; 
 int VM_ENTRY_GUEST_LMA ; 
 int VM_ENTRY_LOAD_EFER ; 
 int VM_REG_GUEST_CR3 ; 
 int VM_REG_GUEST_EFER ; 
 int VM_REG_GUEST_INTR_SHADOW ; 
 int entry_ctls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* hvregs ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*) ; 
 int FUNC4 (int,int,int) ; 
 int FUNC5 (struct vmx*,int,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(void *arg, int vcpu, int reg, uint64_t val)
{
	int error, shadow;
	uint64_t ctls;
	hv_x86_reg_t hvreg;
	struct vmx *vmx = arg;

	if (reg == VM_REG_GUEST_INTR_SHADOW)
		return (FUNC5(vmx, vcpu, val));

	hvreg = hvregs[reg];
	if (hvreg != HV_X86_REGISTERS_MAX) {
		FUNC2(vcpu, hvreg, val);
		return (0);
	}

	error = FUNC4(vcpu, reg, val);

	if (error == 0) {
		/*
		 * If the "load EFER" VM-entry control is 1 then the
		 * value of EFER.LMA must be identical to "IA-32e mode guest"
		 * bit in the VM-entry control.
		 */
		if ((entry_ctls & VM_ENTRY_LOAD_EFER) != 0 &&
		    (reg == VM_REG_GUEST_EFER)) {
			FUNC3(vcpu, FUNC0(VMCS_ENTRY_CTLS), &ctls);
			if (val & EFER_LMA)
				ctls |= VM_ENTRY_GUEST_LMA;
			else
				ctls &= ~VM_ENTRY_GUEST_LMA;
			FUNC4(vcpu, FUNC0(VMCS_ENTRY_CTLS), ctls);
		}

		shadow = FUNC6(reg);
		if (shadow > 0) {
			/*
			 * Store the unmodified value in the shadow
			 */			
			error = FUNC4(vcpu, FUNC0(shadow), val);
		}

		if (reg == VM_REG_GUEST_CR3) {
			/*
			 * Invalidate the guest vcpu's TLB mappings to emulate
			 * the behavior of updating %cr3.
			 */
			FUNC1((hv_vcpuid_t) vcpu);
		}
	}

	return (error);
}