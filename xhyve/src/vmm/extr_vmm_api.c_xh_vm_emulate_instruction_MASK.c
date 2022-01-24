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
struct vie {int dummy; } ;
typedef  int /*<<< orphan*/  mem_region_write_t ;
typedef  int /*<<< orphan*/  mem_region_read_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int
FUNC2(int vcpu, uint64_t gpa, struct vie *vie,
	struct vm_guest_paging *paging, mem_region_read_t memread,
	mem_region_write_t memwrite, void *memarg)
{
	int error;

	FUNC0(vcpu, true);
	error = FUNC1(vm, vcpu, gpa, vie, paging, memread,
		memwrite, memarg);
	FUNC0(vcpu, false);

	return (error);
}