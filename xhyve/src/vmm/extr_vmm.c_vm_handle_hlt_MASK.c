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
struct vm {int /*<<< orphan*/  halted_cpus; int /*<<< orphan*/  active_cpus; scalar_t__ suspend; int /*<<< orphan*/ * rendezvous_func; struct vcpu* vcpu; } ;
struct vcpu {int /*<<< orphan*/  vcpu_sleep_mtx; int /*<<< orphan*/  vcpu_sleep_cnd; int /*<<< orphan*/  vlapic; } ;
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  VCPU_FROZEN ; 
 int /*<<< orphan*/  VCPU_SLEEPING ; 
 int /*<<< orphan*/  VM_SUSPEND_HALT ; 
 scalar_t__ halt_detection_enabled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vcpu*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct vm*,int) ; 
 scalar_t__ FUNC14 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct vm *vm, int vcpuid, bool intr_disabled)
{
	struct vcpu *vcpu;
	const char *wmesg;
	int vcpu_halted, vm_halted;
	const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0}; /* 1 second */

	FUNC4(!FUNC2(((unsigned) vcpuid), &vm->halted_cpus),
		("vcpu already halted"));

	vcpu = &vm->vcpu[vcpuid];
	vcpu_halted = 0;
	vm_halted = 0;

	FUNC9(vcpu);
	while (1) {
		/*
		 * Do a final check for pending NMI or interrupts before
		 * really putting this thread to sleep. Also check for
		 * software events that would cause this vcpu to wakeup.
		 *
		 * These interrupts/events could have happened after the
		 * vcpu returned from VMRUN() and before it acquired the
		 * vcpu lock above.
		 */
		if (vm->rendezvous_func != NULL || vm->suspend)
			break;
		if (FUNC14(vm, vcpuid))
			break;
		if (!intr_disabled) {
			if (FUNC13(vm, vcpuid) ||
			    FUNC12(vcpu->vlapic, NULL)) {
				break;
			}
		}

		/*
		 * Some Linux guests implement "halt" by having all vcpus
		 * execute HLT with interrupts disabled. 'halted_cpus' keeps
		 * track of the vcpus that have entered this state. When all
		 * vcpus enter the halted state the virtual machine is halted.
		 */
		if (intr_disabled) {
			wmesg = "vmhalt";
			FUNC5(vm, vcpuid, "Halted");
			if (!vcpu_halted && halt_detection_enabled) {
				vcpu_halted = 1;
				FUNC3(((unsigned) vcpuid), &vm->halted_cpus);
			}
			if (FUNC1(&vm->halted_cpus, &vm->active_cpus) == 0) {
				vm_halted = 1;
				break;
			}
		} else {
			wmesg = "vmidle";
		}

		//t = ticks;
		FUNC10(vcpu, VCPU_SLEEPING);
		/*
		 * XXX msleep_spin() cannot be interrupted by signals so
		 * wake up periodically to check pending signals.
		 */
		FUNC7(&vcpu->vcpu_sleep_mtx);
		FUNC11(vcpu);
		FUNC6(&vcpu->vcpu_sleep_cnd,
			&vcpu->vcpu_sleep_mtx, &ts);
		FUNC9(vcpu);
		FUNC8(&vcpu->vcpu_sleep_mtx);
		//msleep_spin(vcpu, &vcpu->mtx, wmesg, hz);
		FUNC10(vcpu, VCPU_FROZEN);
		//vmm_stat_incr(vm, vcpuid, VCPU_IDLE_TICKS, ticks - t);
	}

	if (vcpu_halted)
		FUNC0(((unsigned) vcpuid), &vm->halted_cpus);

	FUNC11(vcpu);

	if (vm_halted)
		FUNC15(vm, VM_SUSPEND_HALT);

	return (0);
}