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
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int FUNC0 (struct vm*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct vm *vm, int vcpuid, enum vcpu_state newstate)
{
	int error;

	if ((error = FUNC0(vm, vcpuid, newstate, false)) != 0)
		FUNC1("Error %d setting state to %d\n", error, newstate);
}