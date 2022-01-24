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
struct vm {int /*<<< orphan*/  active_cpus; int /*<<< orphan*/  suspended_cpus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int) ; 

int
FUNC3(struct vm *vm)
{
	int error;

	/*
	 * A virtual machine can be reset only if all vcpus are suspended.
	 */
	if (FUNC0(&vm->suspended_cpus, &vm->active_cpus) == 0) {
		FUNC1(vm, false);
		FUNC2(vm, false);
		error = 0;
	} else {
		error = EBUSY;
	}

	return (error);
}