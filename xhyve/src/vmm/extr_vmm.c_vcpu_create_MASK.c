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
struct vm {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(struct vm *vm, int vcpu) {
	if (vcpu < 0 || vcpu >= VM_MAXCPU)
		FUNC1("vcpu_create: invalid cpuid %d\n", vcpu);

	return FUNC0(vm->cookie, vcpu);
}