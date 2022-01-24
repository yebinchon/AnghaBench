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
struct vm {struct vcpu* vcpu; } ;
struct vcpu {int dummy; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu*) ; 
 int FUNC1 (struct vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int
FUNC4(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
	int error;
	struct vcpu *vcpu;

	if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
		FUNC3("vm_set_run_state: invalid vcpuid %d\n", vcpuid);

	vcpu = &vm->vcpu[vcpuid];

	FUNC0(vcpu);
	error = FUNC1(vcpu, newstate, from_idle);
	FUNC2(vcpu);
	return (error);
}