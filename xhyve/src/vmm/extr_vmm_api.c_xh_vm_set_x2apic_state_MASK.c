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
typedef  enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC2(int vcpu, enum x2apic_state s)
{
	int error;

	FUNC0(vcpu, true);
	error = FUNC1(vm, vcpu, s);
	FUNC0(vcpu, false);

	return (error);
}