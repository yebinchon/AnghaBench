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
struct vcpu {int /*<<< orphan*/  stats; int /*<<< orphan*/  guest_xcr0; scalar_t__ exception_pending; scalar_t__ extint_pending; scalar_t__ nmi_pending; scalar_t__ exitintinfo; int /*<<< orphan*/  vlapic; int /*<<< orphan*/  state; int /*<<< orphan*/  vcpu_sleep_cnd; int /*<<< orphan*/  vcpu_sleep_mtx; int /*<<< orphan*/  state_sleep_cnd; int /*<<< orphan*/  state_sleep_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  VCPU_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  X2APIC_DISABLED ; 
 int /*<<< orphan*/  XFEATURE_ENABLED_X87 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vm *vm, int vcpu_id, bool create)
{
	struct vcpu *vcpu;

	FUNC0(vcpu_id >= 0 && vcpu_id < VM_MAXCPU,
	    ("vcpu_init: invalid vcpu %d", vcpu_id));
	  
	vcpu = &vm->vcpu[vcpu_id];

	if (create) {
		FUNC4(vcpu);
		FUNC3(&vcpu->state_sleep_mtx, NULL);
		FUNC2(&vcpu->state_sleep_cnd, NULL);
		FUNC3(&vcpu->vcpu_sleep_mtx, NULL);
		FUNC2(&vcpu->vcpu_sleep_cnd, NULL);
		vcpu->state = VCPU_IDLE;
		vcpu->stats = FUNC6();
	}

	vcpu->vlapic = FUNC1(vm->cookie, vcpu_id);
	FUNC5(vm, vcpu_id, X2APIC_DISABLED);
	vcpu->exitintinfo = 0;
	vcpu->nmi_pending = 0;
	vcpu->extint_pending = 0;
	vcpu->exception_pending = 0;
	vcpu->guest_xcr0 = XFEATURE_ENABLED_X87;
	FUNC7(vcpu->stats);
}