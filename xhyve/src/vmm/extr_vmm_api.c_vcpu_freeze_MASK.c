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
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int VCPU_FROZEN ; 
 int VCPU_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  vm ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int vcpu, bool freeze)
{
	enum vcpu_state state;

	state = (freeze) ? VCPU_FROZEN : VCPU_IDLE;

	if (FUNC0(vm, vcpu, state, freeze)) {
		FUNC1("vcpu_set_state failed\n");
	}
}