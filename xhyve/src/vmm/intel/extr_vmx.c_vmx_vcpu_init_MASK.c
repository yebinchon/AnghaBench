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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
struct vmx {TYPE_2__* state; TYPE_1__* cap; } ;
typedef  scalar_t__ hv_vcpuid_t ;
struct TYPE_4__ {int /*<<< orphan*/  nextrip; } ;
struct TYPE_3__ {void* proc_ctls2; void* proc_ctls; scalar_t__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_VCPU_DEFAULT ; 
 int IDT_MC ; 
 int /*<<< orphan*/  MSR_FSBASE ; 
 int /*<<< orphan*/  MSR_GSBASE ; 
 int /*<<< orphan*/  MSR_IA32_TSC_AUX ; 
 int /*<<< orphan*/  MSR_SYSENTER_CS_MSR ; 
 int /*<<< orphan*/  MSR_SYSENTER_EIP_MSR ; 
 int /*<<< orphan*/  MSR_SYSENTER_ESP_MSR ; 
 int /*<<< orphan*/  MSR_TSC ; 
 int /*<<< orphan*/  VMCS_ENTRY_CTLS ; 
 int /*<<< orphan*/  VMCS_EXCEPTION_BITMAP ; 
 int /*<<< orphan*/  VMCS_EXIT_CTLS ; 
 int /*<<< orphan*/  VMCS_PIN_BASED_CTLS ; 
 int /*<<< orphan*/  VMCS_PRI_PROC_BASED_CTLS ; 
 int /*<<< orphan*/  VMCS_SEC_PROC_BASED_CTLS ; 
 void* entry_ctls ; 
 void* exit_ctls ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 void* pinbased_ctls ; 
 void* procbased_ctls ; 
 void* procbased_ctls2 ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmx*,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(void *arg, int vcpuid) {
	uint32_t exc_bitmap;
	struct vmx *vmx;
	hv_vcpuid_t hvid;
	int error;

	vmx = (struct vmx *) arg;

	if (FUNC0(&hvid, HV_VCPU_DEFAULT)) {
		FUNC7("hv_vcpu_create failed\n");
	}

	if (hvid != ((hv_vcpuid_t) vcpuid)) {
		/* FIXME */
		FUNC7("vcpu id mismatch\n");
	}

	if (FUNC1(hvid, MSR_GSBASE, 1) ||
		FUNC1(hvid, MSR_FSBASE, 1) ||
		FUNC1(hvid, MSR_SYSENTER_CS_MSR, 1) ||
		FUNC1(hvid, MSR_SYSENTER_ESP_MSR, 1) ||
		FUNC1(hvid, MSR_SYSENTER_EIP_MSR, 1) ||
		FUNC1(hvid, MSR_TSC, 1) ||
		FUNC1(hvid, MSR_IA32_TSC_AUX, 1))
	{
		FUNC7("vmx_vcpu_init: error setting guest msr access\n");
	}

	FUNC4(vmx, vcpuid);

	FUNC3(vcpuid, VMCS_PIN_BASED_CTLS, pinbased_ctls);
	FUNC3(vcpuid, VMCS_PRI_PROC_BASED_CTLS, procbased_ctls);
	FUNC3(vcpuid, VMCS_SEC_PROC_BASED_CTLS, procbased_ctls2);
	FUNC3(vcpuid, VMCS_EXIT_CTLS, exit_ctls);
	FUNC3(vcpuid, VMCS_ENTRY_CTLS, entry_ctls);

	/* exception bitmap */
	if (FUNC2())
		exc_bitmap = 0xffffffff;
	else
		exc_bitmap = 1 << IDT_MC;

	FUNC3(vcpuid, VMCS_EXCEPTION_BITMAP, exc_bitmap);

	vmx->cap[vcpuid].set = 0;
	vmx->cap[vcpuid].proc_ctls = procbased_ctls;
	vmx->cap[vcpuid].proc_ctls2 = procbased_ctls2;
	vmx->state[vcpuid].nextrip = ~(uint64_t) 0;

	/*
	 * Set up the CR0/4 shadows, and init the read shadow
	 * to the power-on register value from the Intel Sys Arch.
	 *  CR0 - 0x60000010
	 *  CR4 - 0
	 */
	error = FUNC5(vcpuid, 0x60000010);
	if (error != 0)
		FUNC7("vmx_setup_cr0_shadow %d\n", error);

	error = FUNC6(vcpuid, 0);

	if (error != 0)
		FUNC7("vmx_setup_cr4_shadow %d\n", error);

	return (0);
}