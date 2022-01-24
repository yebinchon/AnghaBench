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
typedef  int /*<<< orphan*/  u_int ;
struct vm {int /*<<< orphan*/  active_cpus; int /*<<< orphan*/  suspend; } ;
typedef  enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int EALREADY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,char*,int /*<<< orphan*/ ,int) ; 
 int VM_MAXCPU ; 
 int VM_SUSPEND_LAST ; 
 int VM_SUSPEND_NONE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*,int,int) ; 

int
FUNC5(struct vm *vm, enum vm_suspend_how how)
{
	int i;

	if (how <= VM_SUSPEND_NONE || how >= VM_SUSPEND_LAST)
		return (EINVAL);

	if (FUNC3(((volatile u_int *) &vm->suspend), 0, how) == 0) {
		FUNC2(vm, "virtual machine already suspended %d/%d",
		    vm->suspend, how);
		return (EALREADY);
	}

	FUNC1(vm, "virtual machine successfully suspended %d", how);

	/*
	 * Notify all active vcpus that they are now suspended.
	 */
	for (i = 0; i < VM_MAXCPU; i++) {
		if (FUNC0(((unsigned) i), &vm->active_cpus))
			FUNC4(vm, i, false);
	}

	return (0);
}