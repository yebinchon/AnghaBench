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
struct TYPE_4__ {int code; int /*<<< orphan*/  wval; } ;
struct TYPE_3__ {TYPE_2__ msr; } ;
struct vm_exit {TYPE_1__ u; } ;

/* Variables and functions */
 int VMEXIT_CONTINUE ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ strictmsr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct vm_exit *vme, int *pvcpu)
{
	int error;

	error = FUNC0(*pvcpu, vme->u.msr.code, vme->u.msr.wval);
	if (error != 0) {
		FUNC1(stderr, "wrmsr to register %#x(%#x) on vcpu %d\n",
		    vme->u.msr.code, vme->u.msr.wval, *pvcpu);
		if (strictmsr) {
			FUNC2(*pvcpu);
			return (VMEXIT_CONTINUE);
		}
	}
	return (VMEXIT_CONTINUE);
}