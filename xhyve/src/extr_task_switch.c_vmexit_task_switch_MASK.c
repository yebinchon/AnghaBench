#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct vm_guest_paging {scalar_t__ cpu_mode; scalar_t__ cpl; } ;
struct vm_task_switch {int tsssel; int ext; int reason; int /*<<< orphan*/  errcode; struct vm_guest_paging paging; scalar_t__ errcode_valid; } ;
struct TYPE_2__ {struct vm_task_switch task_switch; } ;
struct vm_exit {int rip; scalar_t__ inst_length; TYPE_1__ u; } ;
struct user_segment_descriptor {int sd_type; } ;
struct tss32 {int /*<<< orphan*/  tss_eip; } ;
struct seg_desc {scalar_t__ access; scalar_t__ limit; int base; } ;
struct iovec {int dummy; } ;
typedef  enum task_switch_reason { ____Placeholder_task_switch_reason } task_switch_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ CPU_MODE_PROTECTED ; 
 int CR0_TS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDT_GP ; 
 int /*<<< orphan*/  IDT_NP ; 
 int /*<<< orphan*/  IDT_TS ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int SDT_SYS286BSY ; 
 int SDT_SYS286TSS ; 
 int SDT_SYS386BSY ; 
 int SDT_SYS386TSS ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TSR_IDT_GATE ; 
 int TSR_IRET ; 
 int TSR_JMP ; 
 scalar_t__ FUNC8 (int) ; 
 int VMEXIT_ABORT ; 
 int VMEXIT_CONTINUE ; 
 int /*<<< orphan*/  VM_REG_GUEST_CR0 ; 
 int /*<<< orphan*/  VM_REG_GUEST_RIP ; 
 int /*<<< orphan*/  VM_REG_GUEST_TR ; 
 int XHYVE_PROT_READ ; 
 int XHYVE_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,struct vm_guest_paging*,int,struct user_segment_descriptor*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct iovec*) ; 
 int FUNC13 (int,struct vm_guest_paging*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (int,struct vm_task_switch*,int,struct user_segment_descriptor*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC16 (int,struct vm_task_switch*,int,struct tss32*,struct iovec*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int,struct vm_task_switch*,scalar_t__,struct tss32*,struct iovec*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,struct seg_desc*) ; 
 struct seg_desc FUNC19 (struct user_segment_descriptor*) ; 
 int FUNC20 (int,struct vm_guest_paging*,int,size_t,int,struct iovec*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct iovec*,struct tss32*,size_t) ; 
 int FUNC22 (int,int /*<<< orphan*/ ,int*,scalar_t__*,scalar_t__*) ; 
 int FUNC23 (int,int /*<<< orphan*/ ) ; 
 int FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC25(struct vm_exit *vmexit, int *pvcpu)
{
	struct seg_desc nt;
	struct tss32 oldtss, newtss;
	struct vm_task_switch *task_switch;
	struct vm_guest_paging *paging, sup_paging;
	struct user_segment_descriptor nt_desc, ot_desc;
	struct iovec nt_iov[2], ot_iov[2];
	uint64_t cr0, ot_base;
	uint32_t eip, ot_lim, access;
	int error, ext, fault, minlimit, nt_type, ot_type, vcpu;
	enum task_switch_reason reason;
	uint16_t nt_sel, ot_sel;

	task_switch = &vmexit->u.task_switch;
	nt_sel = task_switch->tsssel;
	ext = vmexit->u.task_switch.ext;
	reason = vmexit->u.task_switch.reason;
	paging = &vmexit->u.task_switch.paging;
	vcpu = *pvcpu;

	FUNC9(paging->cpu_mode == CPU_MODE_PROTECTED);

	/*
	 * Calculate the instruction pointer to store in the old TSS.
	 */
	eip = (uint32_t) (vmexit->rip + ((uint64_t) vmexit->inst_length));

	/*
	 * Section 4.6, "Access Rights" in Intel SDM Vol 3.
	 * The following page table accesses are implicitly supervisor mode:
	 * - accesses to GDT or LDT to load segment descriptors
	 * - accesses to the task state segment during task switch
	 */
	sup_paging = *paging;
	sup_paging.cpl = 0;	/* implicit supervisor mode */

	/* Fetch the new TSS descriptor */
	error = FUNC14(vcpu, task_switch, nt_sel, &nt_desc,
	    &fault);
	FUNC0(error, fault);

	nt = FUNC19(&nt_desc);

	/* Verify the type of the new TSS */
	nt_type = FUNC5(nt.access);
	if (nt_type != SDT_SYS386BSY && nt_type != SDT_SYS386TSS &&
	    nt_type != SDT_SYS286BSY && nt_type != SDT_SYS286TSS) {
		FUNC15(vcpu, IDT_TS, nt_sel, ext);
		goto done;
	}

	/* TSS descriptor must have present bit set */
	if (!FUNC4(nt.access)) {
		FUNC15(vcpu, IDT_NP, nt_sel, ext);
		goto done;
	}

	/*
	 * TSS must have a minimum length of 104 bytes for a 32-bit TSS and
	 * 44 bytes for a 16-bit TSS.
	 */
	if (nt_type == SDT_SYS386BSY || nt_type == SDT_SYS386TSS)
		minlimit = 104 - 1;
	else if (nt_type == SDT_SYS286BSY || nt_type == SDT_SYS286TSS)
		minlimit = 44 - 1;
	else
		minlimit = 0;

	FUNC9(minlimit > 0);
	if (nt.limit < ((uint32_t) minlimit)) {
		FUNC15(vcpu, IDT_TS, nt_sel, ext);
		goto done;
	}

	/* TSS must be busy if task switch is due to IRET */
	if (reason == TSR_IRET && !FUNC8(nt_type)) {
		FUNC15(vcpu, IDT_TS, nt_sel, ext);
		goto done;
	}

	/*
	 * TSS must be available (not busy) if task switch reason is
	 * CALL, JMP, exception or interrupt.
	 */
	if (reason != TSR_IRET && FUNC8(nt_type)) {
		FUNC15(vcpu, IDT_GP, nt_sel, ext);
		goto done;
	}

	/* Fetch the new TSS */
	error = FUNC20(vcpu, &sup_paging, nt.base,
		((size_t) (minlimit + 1)), (XHYVE_PROT_READ | XHYVE_PROT_WRITE), nt_iov,
		FUNC12(nt_iov), &fault);
	FUNC0(error, fault);
	FUNC21(nt_iov, &newtss, ((size_t) (minlimit + 1)));

	/* Get the old TSS selector from the guest's task register */
	ot_sel = (uint16_t) FUNC1(vcpu, VM_REG_GUEST_TR);
	if (FUNC3(ot_sel) || FUNC2(ot_sel) == 0) {
		/*
		 * This might happen if a task switch was attempted without
		 * ever loading the task register with LTR. In this case the
		 * TR would contain the values from power-on:
		 * (sel = 0, base = 0, limit = 0xffff).
		 */
		FUNC15(vcpu, IDT_TS, ot_sel, task_switch->ext);
		goto done;
	}

	/* Get the old TSS base and limit from the guest's task register */
	error = FUNC22(vcpu, VM_REG_GUEST_TR, &ot_base, &ot_lim,
	    &access);
	FUNC9(error == 0);
	FUNC9(!FUNC6(access) && FUNC4(access));
	ot_type = FUNC5(access);
	FUNC9(ot_type == SDT_SYS386BSY || ot_type == SDT_SYS286BSY);

	/* Fetch the old TSS descriptor */
	error = FUNC14(vcpu, task_switch, ot_sel, &ot_desc,
	    &fault);
	FUNC0(error, fault);

	/* Get the old TSS */
	error = FUNC20(vcpu, &sup_paging, ot_base,
		((size_t) (minlimit + 1)), (XHYVE_PROT_READ | XHYVE_PROT_WRITE),
		ot_iov, FUNC12(ot_iov), &fault);
	FUNC0(error, fault);
	FUNC21(ot_iov, &oldtss, ((size_t) (minlimit + 1)));

	/*
	 * Clear the busy bit in the old TSS descriptor if the task switch
	 * due to an IRET or JMP instruction.
	 */
	if (reason == TSR_IRET || reason == TSR_JMP) {
		ot_desc.sd_type &= ~0x2;
		error = FUNC10(vcpu, &sup_paging, ot_sel,
		    &ot_desc, &fault);
		FUNC0(error, fault);
	}

	if (nt_type == SDT_SYS286BSY || nt_type == SDT_SYS286TSS) {
		FUNC11(stderr, "Task switch to 16-bit TSS not supported\n");
		return (VMEXIT_ABORT);
	}

	/* Save processor state in old TSS */
	FUNC17(vcpu, task_switch, eip, &oldtss, ot_iov);

	/*
	 * If the task switch was triggered for any reason other than IRET
	 * then set the busy bit in the new TSS descriptor.
	 */
	if (reason != TSR_IRET) {
		nt_desc.sd_type |= 0x2;
		error = FUNC10(vcpu, &sup_paging, nt_sel,
		    &nt_desc, &fault);
		FUNC0(error, fault);
	}

	/* Update task register to point at the new TSS */
	FUNC7(vcpu, VM_REG_GUEST_TR, nt_sel);

	/* Update the hidden descriptor state of the task register */
	nt = FUNC19(&nt_desc);
	FUNC18(vcpu, VM_REG_GUEST_TR, &nt);

	/* Set CR0.TS */
	cr0 = FUNC1(vcpu, VM_REG_GUEST_CR0);
	FUNC7(vcpu, VM_REG_GUEST_CR0, cr0 | CR0_TS);

	/*
	 * We are now committed to the task switch. Any exceptions encountered
	 * after this point will be handled in the context of the new task and
	 * the saved instruction pointer will belong to the new task.
	 */
	error = FUNC24(vcpu, VM_REG_GUEST_RIP, newtss.tss_eip);
	FUNC9(error == 0);

	/* Load processor state from new TSS */
	error = FUNC16(vcpu, task_switch, ot_sel, &newtss, nt_iov,
	    &fault);
	FUNC0(error, fault);

	/*
	 * Section "Interrupt Tasks" in Intel SDM, Vol 3: if an exception
	 * caused an error code to be generated, this error code is copied
	 * to the stack of the new task.
	 */
	if (task_switch->errcode_valid) {
		FUNC9(task_switch->ext);
		FUNC9(task_switch->reason == TSR_IDT_GATE);
		error = FUNC13(vcpu, &task_switch->paging, nt_type,
		    task_switch->errcode, &fault);
		FUNC0(error, fault);
	}

	/*
	 * Treatment of virtual-NMI blocking if NMI is delivered through
	 * a task gate.
	 *
	 * Section "Architectural State Before A VM Exit", Intel SDM, Vol3:
	 * If the virtual NMIs VM-execution control is 1, VM entry injects
	 * an NMI, and delivery of the NMI causes a task switch that causes
	 * a VM exit, virtual-NMI blocking is in effect before the VM exit
	 * commences.
	 *
	 * Thus, virtual-NMI blocking is in effect at the time of the task
	 * switch VM exit.
	 */

	/*
	 * Treatment of virtual-NMI unblocking on IRET from NMI handler task.
	 *
	 * Section "Changes to Instruction Behavior in VMX Non-Root Operation"
	 * If "virtual NMIs" control is 1 IRET removes any virtual-NMI blocking.
	 * This unblocking of virtual-NMI occurs even if IRET causes a fault.
	 *
	 * Thus, virtual-NMI blocking is cleared at the time of the task switch
	 * VM exit.
	 */

	/*
	 * If the task switch was triggered by an event delivered through
	 * the IDT then extinguish the pending event from the vcpu's
	 * exitintinfo.
	 */
	if (task_switch->reason == TSR_IDT_GATE) {
		error = FUNC23(vcpu, 0);
		FUNC9(error == 0);
	}

	/*
	 * XXX should inject debug exception if 'T' bit is 1
	 */
done:
	return (VMEXIT_CONTINUE);
}