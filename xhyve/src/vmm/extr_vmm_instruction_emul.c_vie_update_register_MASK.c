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
typedef  int uint64_t ;
typedef  enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;

/* Variables and functions */
 int EINVAL ; 
 int* size2mask ; 
 int FUNC0 (void*,int,int,int*) ; 
 int FUNC1 (void*,int,int,int) ; 

int
FUNC2(void *vm, int vcpuid, enum vm_reg_name reg,
		    uint64_t val, int size)
{
	int error;
	uint64_t origval;

	switch (size) {
	case 1:
	case 2:
		error = FUNC0(vm, vcpuid, reg, &origval);
		if (error)
			return (error);
		val &= size2mask[size];
		val |= origval & ~size2mask[size];
		break;
	case 4:
		val &= 0xffffffffUL;
		break;
	case 8:
		break;
	default:
		return (EINVAL);
	}

	error = FUNC1(vm, vcpuid, (int) reg, val);
	return (error);
}