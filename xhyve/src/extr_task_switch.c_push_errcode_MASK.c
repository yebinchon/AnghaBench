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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct vm_guest_paging {int /*<<< orphan*/  cpl; int /*<<< orphan*/  cpu_mode; } ;
struct seg_desc {int /*<<< orphan*/  access; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDT_SS ; 
 int SDT_SYS386BSY ; 
 int SDT_SYS386TSS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  VM_REG_GUEST_CR0 ; 
 int /*<<< orphan*/  VM_REG_GUEST_RFLAGS ; 
 int /*<<< orphan*/  VM_REG_GUEST_RSP ; 
 int /*<<< orphan*/  VM_REG_GUEST_SS ; 
 int /*<<< orphan*/  XHYVE_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct seg_desc*,scalar_t__,int,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int,struct vm_guest_paging*,scalar_t__,size_t,int /*<<< orphan*/ ,struct iovec*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,struct iovec*,size_t) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(int vcpu, struct vm_guest_paging *paging, int task_type,
	uint32_t errcode, int *faultptr)
{
	struct iovec iov[2];
	struct seg_desc seg_desc;
	int stacksize, bytes, error;
	uint64_t gla, cr0, rflags;
	uint32_t esp;
	uint16_t stacksel;

	*faultptr = 0;

	cr0 = FUNC0(vcpu, VM_REG_GUEST_CR0);
	rflags = FUNC0(vcpu, VM_REG_GUEST_RFLAGS);
	stacksel = (uint16_t) FUNC0(vcpu, VM_REG_GUEST_SS);

	error = FUNC11(vcpu, VM_REG_GUEST_SS, &seg_desc.base,
	    &seg_desc.limit, &seg_desc.access);
	FUNC3(error == 0);

	/*
	 * Section "Error Code" in the Intel SDM vol 3: the error code is
	 * pushed on the stack as a doubleword or word (depending on the
	 * default interrupt, trap or task gate size).
	 */
	if (task_type == SDT_SYS386BSY || task_type == SDT_SYS386TSS)
		bytes = 4;
	else
		bytes = 2;

	/*
	 * PUSH instruction from Intel SDM vol 2: the 'B' flag in the
	 * stack-segment descriptor determines the size of the stack
	 * pointer outside of 64-bit mode.
	 */
	if (FUNC1(seg_desc.access))
		stacksize = 4;
	else
		stacksize = 2;

	esp = (uint32_t) FUNC0(vcpu, VM_REG_GUEST_RSP);
	esp -= (uint32_t) bytes;

	if (FUNC7(paging->cpu_mode, VM_REG_GUEST_SS, &seg_desc, esp,
		bytes, stacksize, XHYVE_PROT_WRITE, &gla))
	{
		FUNC5(vcpu, IDT_SS, stacksel, 1);
		*faultptr = 1;
		return (0);
	}

	if (FUNC6(paging->cpl, bytes, cr0, rflags, gla)) {
		FUNC8(vcpu, 1);
		*faultptr = 1;
		return (0);
	}

	error = FUNC9(vcpu, paging, gla, ((size_t) bytes),
		XHYVE_PROT_WRITE, iov, FUNC4(iov), faultptr);
	if (error || *faultptr)
		return (error);

	FUNC10(&errcode, iov, ((size_t) bytes));
	FUNC2(vcpu, VM_REG_GUEST_RSP, esp);
	return (0);
}