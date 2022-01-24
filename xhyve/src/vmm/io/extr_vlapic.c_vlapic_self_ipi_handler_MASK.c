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
typedef  int uint64_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPIS_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*) ; 

void
FUNC5(struct vlapic *vlapic, uint64_t val)
{
	int vec;

	FUNC0(FUNC4(vlapic), ("SELF_IPI does not exist in xAPIC mode"));

	vec = val & 0xff;
	FUNC2(vlapic->vm, vlapic->vcpuid, vec);
	FUNC3(vlapic->vm, vlapic->vcpuid, IPIS_SENT,
	    vlapic->vcpuid, 1);
	FUNC1(vlapic, "vlapic self-ipi %d", vec);
}