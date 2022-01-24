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
struct vcpu {int nmi_pending; } ;

/* Variables and functions */
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

int
FUNC1(struct vm *vm, int vcpuid)
{
	struct vcpu *vcpu;

	if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
		FUNC0("vm_nmi_pending: invalid vcpuid %d\n", vcpuid);

	vcpu = &vm->vcpu[vcpuid];

	return (vcpu->nmi_pending);
}