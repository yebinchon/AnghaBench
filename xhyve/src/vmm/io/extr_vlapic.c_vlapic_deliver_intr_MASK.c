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
typedef  int /*<<< orphan*/  uint32_t ;
struct vm {int dummy; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int IOART_DELEXINT ; 
 int IOART_DELFIXED ; 
 int IOART_DELLOPRI ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int) ; 

void
FUNC6(struct vm *vm, bool level, uint32_t dest, bool phys,
    int delmode, int vec)
{
	bool lowprio;
	int vcpuid;
	cpuset_t dmask;

	if (delmode != IOART_DELFIXED &&
	    delmode != IOART_DELLOPRI &&
	    delmode != IOART_DELEXINT) {
		FUNC2(vm, "vlapic intr invalid delmode %#x", delmode);
		return;
	}
	lowprio = (delmode == IOART_DELLOPRI);

	/*
	 * We don't provide any virtual interrupt redirection hardware so
	 * all interrupts originating from the ioapic or MSI specify the
	 * 'dest' in the legacy xAPIC format.
	 */
	FUNC4(vm, &dmask, dest, phys, lowprio, false);

	while ((vcpuid = FUNC1(&dmask)) != 0) {
		vcpuid--;
		FUNC0(((unsigned) vcpuid), &dmask);
		if (delmode == IOART_DELEXINT) {
			FUNC5(vm, vcpuid);
		} else {
			FUNC3(vm, vcpuid, vec, level);
		}
	}
}