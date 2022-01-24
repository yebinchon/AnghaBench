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
struct vm {int num_mem_segs; int /*<<< orphan*/ * mem_segs; int /*<<< orphan*/  cookie; int /*<<< orphan*/  vioapic; int /*<<< orphan*/  vatpic; int /*<<< orphan*/  vhpet; int /*<<< orphan*/  vatpit; int /*<<< orphan*/  vpmtmr; int /*<<< orphan*/  vrtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct vm *vm, bool destroy)
{
	int i, vcpu;

	for (vcpu = 0; vcpu < VM_MAXCPU; vcpu++) {
		FUNC3(vm, vcpu, destroy);
	}

	if (destroy) {
		FUNC8(vm->vrtc);
	} else {
		FUNC9(vm->vrtc);
	}
	FUNC7(vm->vpmtmr);
	FUNC2(vm->vatpit);
	FUNC4(vm->vhpet);
	FUNC1(vm->vatpic);
	FUNC5(vm->vioapic);

	FUNC0(vm->cookie);

	if (destroy) {
		for (i = 0; i < vm->num_mem_segs; i++) {
			FUNC6(&vm->mem_segs[i]);
		}

		vm->num_mem_segs = 0;
	}
}