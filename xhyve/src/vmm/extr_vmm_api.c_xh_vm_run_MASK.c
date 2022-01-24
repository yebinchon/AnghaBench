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
struct vm_exit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct vm_exit*) ; 

int
FUNC2(int vcpu, struct vm_exit *ret_vmexit)
{
	int error;

	FUNC0(vcpu, true);
	error = FUNC1(vm, vcpu, ret_vmexit);
	FUNC0(vcpu, false);

	return (error);
}