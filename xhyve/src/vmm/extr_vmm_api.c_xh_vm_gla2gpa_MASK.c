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
typedef  int /*<<< orphan*/  uint64_t ;
struct vm_guest_paging {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct vm_guest_paging*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 

int
FUNC2(int vcpu, struct vm_guest_paging *paging, uint64_t gla,
	int prot, uint64_t *gpa, int *fault)
{
	int error;

	FUNC0(vcpu, true);
	error = FUNC1(vm, vcpu, paging, gla, prot, gpa, fault);
	FUNC0(vcpu, false);

	return (error);
}