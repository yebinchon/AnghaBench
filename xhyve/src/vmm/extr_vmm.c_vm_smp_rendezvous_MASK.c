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
typedef  int /*<<< orphan*/  vm_rendezvous_func_t ;
struct vm {int /*<<< orphan*/  rendezvous_mtx; void* rendezvous_arg; int /*<<< orphan*/  rendezvous_done_cpus; int /*<<< orphan*/  rendezvous_req_cpus; int /*<<< orphan*/ * rendezvous_func; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,char*) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vm*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct vm *vm, int vcpuid, cpuset_t dest,
    vm_rendezvous_func_t func, void *arg)
{
	int i;

	FUNC2(vcpuid == -1 || (vcpuid >= 0 && vcpuid < VM_MAXCPU),
	    ("vm_smp_rendezvous: invalid vcpuid %d", vcpuid));

restart:
	FUNC4(&vm->rendezvous_mtx);
	if (vm->rendezvous_func != NULL) {
		/*
		 * If a rendezvous is already in progress then we need to
		 * call the rendezvous handler in case this 'vcpuid' is one
		 * of the targets of the rendezvous.
		 */
		FUNC3(vm, vcpuid, "Rendezvous already in progress");
		FUNC5(&vm->rendezvous_mtx);
		FUNC7(vm, vcpuid);
		goto restart;
	}
	FUNC2(vm->rendezvous_func == NULL, ("vm_smp_rendezvous: previous "
	    "rendezvous is still in progress"));

	FUNC3(vm, vcpuid, "Initiating rendezvous");
	vm->rendezvous_req_cpus = dest;
	FUNC1(&vm->rendezvous_done_cpus);
	vm->rendezvous_arg = arg;
	FUNC8(vm, func);
	FUNC5(&vm->rendezvous_mtx);

	/*
	 * Wake up any sleeping vcpus and trigger a VM-exit in any running
	 * vcpus so they handle the rendezvous as soon as possible.
	 */
	for (i = 0; i < VM_MAXCPU; i++) {
		if (FUNC0(((unsigned) i), &dest))
			FUNC6(vm, i, false);
	}

	FUNC7(vm, vcpuid);
}