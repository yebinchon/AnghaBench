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
struct vm {int /*<<< orphan*/  active_cpus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,char*) ; 
 int VM_MAXCPU ; 

int
FUNC3(struct vm *vm, int vcpuid)
{

	if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
		return (EINVAL);

	if (FUNC0(((unsigned) vcpuid), &vm->active_cpus))
		return (EBUSY);

	FUNC2(vm, vcpuid, "activated");
	FUNC1(((unsigned) vcpuid), &vm->active_cpus);
	return (0);
}