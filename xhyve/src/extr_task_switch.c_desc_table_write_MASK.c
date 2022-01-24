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
typedef  int /*<<< orphan*/  uint16_t ;
struct vm_guest_paging {int dummy; } ;
struct user_segment_descriptor {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct vm_guest_paging*,int /*<<< orphan*/ ,struct user_segment_descriptor*,int,int*) ; 

__attribute__((used)) static int
FUNC1(int vcpu, struct vm_guest_paging *paging, uint16_t sel,
	struct user_segment_descriptor *desc, int *faultptr)
{
	return (FUNC0(vcpu, paging, sel, desc, false, faultptr));
}