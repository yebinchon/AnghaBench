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

/* Variables and functions */
 int BSP ; 
 int /*<<< orphan*/  VM_CAP_HALT_EXIT ; 
 int /*<<< orphan*/  VM_CAP_PAUSE_EXIT ; 
 size_t VM_EXITCODE_HLT ; 
 size_t VM_EXITCODE_PAUSE ; 
 int /*<<< orphan*/  X2APIC_DISABLED ; 
 int /*<<< orphan*/  X2APIC_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  vmexit_hlt ; 
 int /*<<< orphan*/  vmexit_pause ; 
 scalar_t__ x2apic_mode ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

void
FUNC7(int cpu)
{
	int err, tmp;

	if (FUNC1()) {
		err = FUNC4(cpu, VM_CAP_HALT_EXIT, &tmp);
		if (err < 0) {
			FUNC3(stderr, "VM exit on HLT not supported\n");
			FUNC0(1);
		}
		FUNC5(cpu, VM_CAP_HALT_EXIT, 1);
		if (cpu == BSP)
			handler[VM_EXITCODE_HLT] = vmexit_hlt;
	}

        if (FUNC2()) {
		/*
		 * pause exit support required for this mode
		 */
		err = FUNC4(cpu, VM_CAP_PAUSE_EXIT, &tmp);
		if (err < 0) {
			FUNC3(stderr,
			    "SMP mux requested, no pause support\n");
			FUNC0(1);
		}
		FUNC5(cpu, VM_CAP_PAUSE_EXIT, 1);
		if (cpu == BSP)
			handler[VM_EXITCODE_PAUSE] = vmexit_pause;
        }

	if (x2apic_mode)
		err = FUNC6(cpu, X2APIC_ENABLED);
	else
		err = FUNC6(cpu, X2APIC_DISABLED);

	if (err) {
		FUNC3(stderr, "Unable to set x2apic state (%d)\n", err);
		FUNC0(1);
	}
}