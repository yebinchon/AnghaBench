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
struct TYPE_3__ {int how; } ;
struct TYPE_4__ {TYPE_1__ suspended; } ;
struct vm_exit {TYPE_2__ u; } ;
typedef  enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;

/* Variables and functions */
 int BSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  VM_SUSPEND_HALT 131 
#define  VM_SUSPEND_POWEROFF 130 
#define  VM_SUSPEND_RESET 129 
#define  VM_SUSPEND_TRIPLEFAULT 128 
 int /*<<< orphan*/  cpumask ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resetcpu_cond ; 
 int /*<<< orphan*/  resetcpu_mtx ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct vm_exit *vme, int *pvcpu)
{
	enum vm_suspend_how how;

	how = vme->u.suspended.how;

	FUNC8(*pvcpu);

	if (*pvcpu != BSP) {
		FUNC6(&resetcpu_mtx);
		FUNC3(&resetcpu_cond);
		FUNC7(&resetcpu_mtx);
		FUNC5(NULL);
	}

	FUNC6(&resetcpu_mtx);
	while (!FUNC0(&cpumask)) {
		FUNC4(&resetcpu_cond, &resetcpu_mtx);
	}
	FUNC7(&resetcpu_mtx);

	switch ((int) (how)) {
	case VM_SUSPEND_RESET:
		FUNC1(0);
	case VM_SUSPEND_POWEROFF:
		FUNC1(1);
	case VM_SUSPEND_HALT:
		FUNC1(2);
	case VM_SUSPEND_TRIPLEFAULT:
		FUNC1(3);
	default:
		FUNC2(stderr, "vmexit_suspend: invalid reason %d\n", how);
		FUNC1(100);
	}
}