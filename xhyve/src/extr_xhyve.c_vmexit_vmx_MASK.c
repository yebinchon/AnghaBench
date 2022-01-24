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
struct TYPE_3__ {int status; int exit_reason; int exit_qualification; int inst_type; int inst_error; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {int rip; int inst_length; TYPE_2__ u; } ;

/* Variables and functions */
 int VMEXIT_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC1(struct vm_exit *vme, int *pvcpu)
{
	FUNC0(stderr, "vm exit[%d]\n", *pvcpu);
	FUNC0(stderr, "\treason\t\tVMX\n");
	FUNC0(stderr, "\trip\t\t0x%016x\n", vme->rip);
	FUNC0(stderr, "\tinst_length\t%d\n", vme->inst_length);
	FUNC0(stderr, "\tstatus\t\t%d\n", vme->u.vmx.status);
	FUNC0(stderr, "\texit_reason\t%u\n", vme->u.vmx.exit_reason);
	FUNC0(stderr, "\tqualification\t0x%016x\n",
	    vme->u.vmx.exit_qualification);
	FUNC0(stderr, "\tinst_type\t\t%d\n", vme->u.vmx.inst_type);
	FUNC0(stderr, "\tinst_error\t\t%d\n", vme->u.vmx.inst_error);
	return (VMEXIT_ABORT);
}