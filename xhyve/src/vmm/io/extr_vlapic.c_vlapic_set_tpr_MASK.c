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
typedef  scalar_t__ uint8_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; struct LAPIC* apic_page; } ;
struct LAPIC {scalar_t__ tpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*) ; 

__attribute__((used)) static void
FUNC2(struct vlapic *vlapic, uint8_t val)
{
	struct LAPIC *lapic = vlapic->apic_page;

	if (lapic->tpr != val) {
		FUNC0(vlapic->vm, vlapic->vcpuid, "vlapic TPR changed "
		    "from %#x to %#x", lapic->tpr, val);
		lapic->tpr = val;
		FUNC1(vlapic);
	}
}