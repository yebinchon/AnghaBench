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
typedef  int /*<<< orphan*/  uint16_t ;
struct vm_guest_paging {scalar_t__ cpl; } ;
struct vm_task_switch {scalar_t__ reason; struct vm_guest_paging paging; int /*<<< orphan*/  ext; } ;
struct user_segment_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDT_GP ; 
 int /*<<< orphan*/  IDT_TS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TSR_IRET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct vm_guest_paging*,int /*<<< orphan*/ ,struct user_segment_descriptor*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int vcpu, struct vm_task_switch *ts, uint16_t sel,
	struct user_segment_descriptor *desc, int *faultptr)
{
	struct vm_guest_paging sup_paging;
	int error;

	FUNC2(!FUNC1(sel));
	FUNC2(FUNC0(sel) != 0);

	/* Fetch the new TSS descriptor */
	if (FUNC3(vcpu, sel)) {
		if (ts->reason == TSR_IRET)
			FUNC5(vcpu, IDT_TS, sel, ts->ext);
		else
			FUNC5(vcpu, IDT_GP, sel, ts->ext);
		return (1);
	}

	sup_paging = ts->paging;
	sup_paging.cpl = 0;		/* implicit supervisor mode */
	error = FUNC4(vcpu, &sup_paging, sel, desc, faultptr);
	return (error);
}