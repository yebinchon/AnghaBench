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
struct vm {int /*<<< orphan*/  suspended_cpus; int /*<<< orphan*/ * rendezvous_func; int /*<<< orphan*/  active_cpus; struct vcpu* vcpu; } ;
struct vcpu {int /*<<< orphan*/  vcpu_sleep_mtx; int /*<<< orphan*/  vcpu_sleep_cnd; } ;
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  VCPU_FROZEN ; 
 int /*<<< orphan*/  VCPU_SLEEPING ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct vm*,int) ; 

__attribute__((used)) static int
FUNC12(struct vm *vm, int vcpuid, bool *retu)
{
	int i, done;
	struct vcpu *vcpu;
	const struct timespec ts = {.tv_sec = 1, .tv_nsec = 0}; /* 1 second */

	done = 0;
	vcpu = &vm->vcpu[vcpuid];

	FUNC2(((unsigned) vcpuid), &vm->suspended_cpus);

	/*
	 * Wait until all 'active_cpus' have suspended themselves.
	 *
	 * Since a VM may be suspended at any time including when one or
	 * more vcpus are doing a rendezvous we need to call the rendezvous
	 * handler while we are waiting to prevent a deadlock.
	 */
	FUNC7(vcpu);
	while (1) {
		if (FUNC0(&vm->suspended_cpus, &vm->active_cpus) == 0) {
			FUNC3(vm, vcpuid, "All vcpus suspended");
			break;
		}

		if (vm->rendezvous_func == NULL) {
			FUNC3(vm, vcpuid, "Sleeping during suspend");
			FUNC9(vcpu, VCPU_SLEEPING);

			FUNC5(&vcpu->vcpu_sleep_mtx);
			FUNC10(vcpu);
			FUNC4(&vcpu->vcpu_sleep_cnd,
				&vcpu->vcpu_sleep_mtx, &ts);
			FUNC7(vcpu);
			FUNC6(&vcpu->vcpu_sleep_mtx);
			//msleep_spin(vcpu, &vcpu->mtx, "vmsusp", hz);

			FUNC9(vcpu, VCPU_FROZEN);
		} else {
			FUNC3(vm, vcpuid, "Rendezvous during suspend");
			FUNC10(vcpu);
			FUNC11(vm, vcpuid);
			FUNC7(vcpu);
		}
	}
	FUNC10(vcpu);

	/*
	 * Wakeup the other sleeping vcpus and return to userspace.
	 */
	for (i = 0; i < VM_MAXCPU; i++) {
		if (FUNC1(((unsigned) i), &vm->suspended_cpus)) {
			FUNC8(vm, i, false);
		}
	}

	*retu = true;
	return (0);
}