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
typedef  int /*<<< orphan*/  uint32_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_OFFSET_CMCI_LVT ; 
 int /*<<< orphan*/  VLAPIC_INTR_CMC ; 
 scalar_t__ FUNC0 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct vlapic *vlapic)
{
	uint32_t lvt;

	lvt = FUNC1(vlapic, APIC_OFFSET_CMCI_LVT);
	if (FUNC0(vlapic, lvt)) {
		FUNC2(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_CMC, 1);
	}
}