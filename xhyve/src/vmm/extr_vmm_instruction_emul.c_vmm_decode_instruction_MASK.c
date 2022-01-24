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
typedef  int /*<<< orphan*/  uint64_t ;
struct vm {int dummy; } ;
struct TYPE_2__ {int op_flags; } ;
struct vie {int decoded; TYPE_1__ op; } ;
typedef  enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;

/* Variables and functions */
 int VIE_OP_F_NO_GLA_VERIFICATION ; 
 scalar_t__ FUNC0 (struct vie*) ; 
 scalar_t__ FUNC1 (struct vie*) ; 
 scalar_t__ FUNC2 (struct vie*,int) ; 
 scalar_t__ FUNC3 (struct vie*) ; 
 scalar_t__ FUNC4 (struct vie*) ; 
 scalar_t__ FUNC5 (struct vie*,int,int) ; 
 scalar_t__ FUNC6 (struct vie*) ; 
 scalar_t__ FUNC7 (struct vm*,int,int /*<<< orphan*/ ,struct vie*) ; 
 scalar_t__ FUNC8 (struct vie*) ; 

int
FUNC9(struct vm *vm, int cpuid, uint64_t gla,
		       enum vm_cpu_mode cpu_mode, int cs_d, struct vie *vie)
{

	if (FUNC5(vie, cpu_mode, cs_d))
		return (-1);

	if (FUNC4(vie))
		return (-1);

	if (FUNC2(vie, cpu_mode))
		return (-1);

	if (FUNC6(vie))
		return (-1);

	if (FUNC0(vie))
		return (-1);

	if (FUNC1(vie))
		return (-1);

	if (FUNC3(vie))
		return (-1);

	if (FUNC8(vie))
		return (-1);

	if ((vie->op.op_flags & VIE_OP_F_NO_GLA_VERIFICATION) == 0) {
		if (FUNC7(vm, cpuid, gla, vie))
			return (-1);
	}

	vie->decoded = 1;	/* success */

	return (0);
}