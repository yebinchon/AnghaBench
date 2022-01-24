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
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int VM_CAP_MAX ; 
 int VM_MAXCPU ; 

int
FUNC1(struct vm *vm, int vcpu, int type, int val)
{
	if (vcpu < 0 || vcpu >= VM_MAXCPU)
		return (EINVAL);

	if (type < 0 || type >= VM_CAP_MAX)
		return (EINVAL);

	return (FUNC0(vm->cookie, vcpu, type, val));
}