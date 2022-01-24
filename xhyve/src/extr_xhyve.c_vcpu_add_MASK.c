#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int mt_vcpu; int /*<<< orphan*/  mt_thr; } ;
struct TYPE_4__ {int /*<<< orphan*/  rip; } ;

/* Variables and functions */
 int BSP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpumask ; 
 TYPE_2__* mt_vmm_info ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  vcpu_thread ; 
 TYPE_1__* vmexit ; 
 int FUNC3 (int) ; 

void
FUNC4(int fromcpu, int newcpu, uint64_t rip)
{
	int error;

	FUNC1(fromcpu == BSP);

	/*
	 * The 'newcpu' must be activated in the context of 'fromcpu'. If
	 * vm_activate_cpu() is delayed until newcpu's pthread starts running
	 * then vmm.ko is out-of-sync with bhyve and this can create a race
	 * with vm_suspend().
	 */
	error = FUNC3(newcpu);
	FUNC1(error == 0);

	FUNC0(((unsigned) newcpu), &cpumask);

	mt_vmm_info[newcpu].mt_vcpu = newcpu;

	vmexit[newcpu].rip = rip;

	error = FUNC2(&mt_vmm_info[newcpu].mt_thr, NULL, vcpu_thread,
		&mt_vmm_info[newcpu]);

	FUNC1(error == 0);
}