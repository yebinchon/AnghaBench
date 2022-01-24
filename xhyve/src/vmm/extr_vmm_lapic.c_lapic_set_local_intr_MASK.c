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
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int VM_MAXCPU ; 
 int FUNC3 (struct vlapic*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*) ; 
 struct vlapic* FUNC5 (struct vm*,int) ; 

int
FUNC6(struct vm *vm, int cpu, int vector)
{
	struct vlapic *vlapic;
	cpuset_t dmask;
	int error;

	if (cpu < -1 || cpu >= VM_MAXCPU)
		return (EINVAL);

	if (cpu == -1)
		dmask = FUNC4(vm);
	else
		FUNC2(((unsigned) cpu), &dmask);
	error = 0;
	while ((cpu = FUNC1(&dmask)) != 0) {
		cpu--;
		FUNC0(((unsigned) cpu), &dmask);
		vlapic = FUNC5(vm, cpu);
		error = FUNC3(vlapic, vector);
		if (error)
			break;
	}

	return (error);
}