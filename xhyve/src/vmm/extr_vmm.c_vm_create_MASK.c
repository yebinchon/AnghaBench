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
struct vm {int /*<<< orphan*/  rendezvous_sleep_cnd; int /*<<< orphan*/  rendezvous_mtx; scalar_t__ num_mem_segs; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct vm*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int) ; 
 struct vm* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int) ; 
 int /*<<< orphan*/  vmm_initialized ; 

int
FUNC6(struct vm **retvm)
{
	struct vm *vm;

	if (!vmm_initialized)
		return (ENXIO);

	vm = FUNC2(sizeof(struct vm));
	FUNC0(vm);
	FUNC1(vm, sizeof(struct vm));
	vm->num_mem_segs = 0;
	FUNC4(&vm->rendezvous_mtx, NULL);
	FUNC3(&vm->rendezvous_sleep_cnd, NULL);

	FUNC5(vm, true);

	*retvm = vm;
	return (0);
}