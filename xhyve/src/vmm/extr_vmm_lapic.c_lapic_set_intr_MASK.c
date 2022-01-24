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
struct vm {int dummy; } ;
struct vlapic {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC0 (struct vm*,int,int) ; 
 scalar_t__ FUNC1 (struct vlapic*,int,int) ; 
 struct vlapic* FUNC2 (struct vm*,int) ; 

int
FUNC3(struct vm *vm, int cpu, int vector, bool level)
{
	struct vlapic *vlapic;

	if (cpu < 0 || cpu >= VM_MAXCPU)
		return (EINVAL);

	/*
	 * According to section "Maskable Hardware Interrupts" in Intel SDM
	 * vectors 16 through 255 can be delivered through the local APIC.
	 */
	if (vector < 16 || vector > 255)
		return (EINVAL);

	vlapic = FUNC2(vm, cpu);
	if (FUNC1(vlapic, vector, level))
		FUNC0(vm, cpu, true);
	return (0);
}