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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vm_copyinfo {int dummy; } ;
struct vm {int dummy; } ;
struct vie {scalar_t__ num_valid; int /*<<< orphan*/  inst; } ;

/* Variables and functions */
 int VIE_INST_SIZE ; 
 int XHYVE_PROT_EXECUTE ; 
 int XHYVE_PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (struct vm_copyinfo*) ; 
 int FUNC1 (struct vm*,int,struct vm_guest_paging*,int /*<<< orphan*/ ,size_t,int,struct vm_copyinfo*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,struct vm_copyinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,struct vm_copyinfo*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int
FUNC5(struct vm *vm, int vcpuid, struct vm_guest_paging *paging,
    uint64_t rip, int inst_length, struct vie *vie, int *faultptr)
{
	struct vm_copyinfo copyinfo[2];
	int error, prot;

	if (inst_length > VIE_INST_SIZE)
		FUNC4("vmm_fetch_instruction: invalid length %d\n", inst_length);

	prot = XHYVE_PROT_READ | XHYVE_PROT_EXECUTE;
	error = FUNC1(vm, vcpuid, paging, rip, ((size_t) inst_length), prot,
	    copyinfo, FUNC0(copyinfo), faultptr);
	if (error || *faultptr)
		return (error);

	FUNC3(vm, vcpuid, copyinfo, vie->inst, ((size_t) inst_length));
	FUNC2(vm, vcpuid, copyinfo, FUNC0(copyinfo));
	vie->num_valid = (uint8_t) inst_length;
	return (0);
}