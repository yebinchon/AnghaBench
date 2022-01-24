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
typedef  int uint32_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ESR_SEND_ILLEGAL_VECTOR ; 
 int APIC_LVT_DM ; 
#define  APIC_LVT_DM_EXTINT 130 
#define  APIC_LVT_DM_FIXED 129 
#define  APIC_LVT_DM_NMI 128 
 int APIC_LVT_M ; 
 int APIC_LVT_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vlapic *vlapic, uint32_t lvt)
{
	uint32_t vec, mode;

	if (lvt & APIC_LVT_M)
		return (0);

	vec = lvt & APIC_LVT_VECTOR;
	mode = lvt & APIC_LVT_DM;

	switch (mode) {
	case APIC_LVT_DM_FIXED:
		if (vec < 16) {
			FUNC1(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR);
			return (0);
		}
		if (FUNC2(vlapic, ((int) vec), false))
			FUNC0(vlapic->vm, vlapic->vcpuid, true);
		break;
	case APIC_LVT_DM_NMI:
		FUNC4(vlapic->vm, vlapic->vcpuid);
		break;
	case APIC_LVT_DM_EXTINT:
		FUNC3(vlapic->vm, vlapic->vcpuid);
		break;
	default:
		// Other modes ignored
		return (0);
	}
	return (1);
}