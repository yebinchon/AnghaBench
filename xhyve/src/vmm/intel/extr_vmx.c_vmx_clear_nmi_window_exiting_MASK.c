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
struct vmx {int /*<<< orphan*/  vm; TYPE_1__* cap; } ;
struct TYPE_2__ {int proc_ctls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PROCBASED_NMI_WINDOW_EXITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  VMCS_PRI_PROC_BASED_CTLS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void __inline
FUNC3(struct vmx *vmx, int vcpu)
{

	FUNC0((vmx->cap[vcpu].proc_ctls & PROCBASED_NMI_WINDOW_EXITING) != 0,
	    ("nmi_window_exiting not set %#x", vmx->cap[vcpu].proc_ctls));
	vmx->cap[vcpu].proc_ctls &= ~PROCBASED_NMI_WINDOW_EXITING;
	FUNC2(vcpu, VMCS_PRI_PROC_BASED_CTLS, vmx->cap[vcpu].proc_ctls);
	FUNC1(vmx->vm, vcpu, "Disabling NMI window exiting");
}