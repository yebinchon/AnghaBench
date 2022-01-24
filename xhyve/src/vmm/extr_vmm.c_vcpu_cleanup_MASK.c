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
struct vm {int /*<<< orphan*/  cookie; struct vcpu* vcpu; } ;
struct vcpu {int /*<<< orphan*/  stats; int /*<<< orphan*/  vlapic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vm *vm, int i, bool destroy)
{
	struct vcpu *vcpu = &vm->vcpu[i];

	FUNC0(vm->cookie, vcpu->vlapic);
	if (destroy) {
		FUNC1(vcpu->stats);	
	}
}