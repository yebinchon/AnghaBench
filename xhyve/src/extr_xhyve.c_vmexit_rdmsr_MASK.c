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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ msr; } ;
struct vm_exit {TYPE_2__ u; } ;

/* Variables and functions */
 int VMEXIT_CONTINUE ; 
 int /*<<< orphan*/  VM_REG_GUEST_RAX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ strictmsr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct vm_exit *vme, int *pvcpu)
{
	uint64_t val;
	uint32_t eax, edx;
	int error;

	val = 0;
	error = FUNC1(*pvcpu, vme->u.msr.code, &val);
	if (error != 0) {
		FUNC2(stderr, "rdmsr to register %#x on vcpu %d\n",
		    vme->u.msr.code, *pvcpu);
		if (strictmsr) {
			FUNC3(*pvcpu);
			return (VMEXIT_CONTINUE);
		}
	}

	eax = (uint32_t) val;
	error = FUNC4(*pvcpu, VM_REG_GUEST_RAX, eax);
	FUNC0(error == 0);

	edx = val >> 32;
	error = FUNC4(*pvcpu, VM_REG_GUEST_RDX, edx);
	FUNC0(error == 0);

	return (VMEXIT_CONTINUE);
}