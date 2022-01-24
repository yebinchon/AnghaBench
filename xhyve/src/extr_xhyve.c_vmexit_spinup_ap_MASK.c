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
struct TYPE_3__ {scalar_t__ vcpu; int /*<<< orphan*/  rip; } ;
struct TYPE_4__ {TYPE_1__ spinup_ap; } ;
struct vm_exit {TYPE_2__ u; } ;

/* Variables and functions */
 int VMEXIT_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ guest_ncpus ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vm_exit *vme, int *pvcpu)
{
	FUNC0(vme->u.spinup_ap.vcpu != 0);
	FUNC0(vme->u.spinup_ap.vcpu < guest_ncpus);

	FUNC1(*pvcpu, vme->u.spinup_ap.vcpu, vme->u.spinup_ap.rip);

	return (VMEXIT_CONTINUE);
}