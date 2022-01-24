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
struct vlapic {scalar_t__ isrvec_stk_top; int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; struct LAPIC* apic_page; } ;
struct LAPIC {int isr0; int tmr0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,char*) ; 
 int /*<<< orphan*/  VLAPIC_GRATUITOUS_EOI ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct vlapic *vlapic)
{
	struct LAPIC	*lapic = vlapic->apic_page;
	uint32_t	*isrptr, *tmrptr;
	int		i, idx, bitpos, vector;

	isrptr = &lapic->isr0;
	tmrptr = &lapic->tmr0;

	for (i = 7; i >= 0; i--) {
		idx = i * 4;
		bitpos = FUNC3((int) isrptr[idx]);
		if (bitpos-- != 0) {
			if (vlapic->isrvec_stk_top <= 0) {
				FUNC7("invalid vlapic isrvec_stk_top %d\n",
				      vlapic->isrvec_stk_top);
			}
			isrptr[idx] &= ~(1 << bitpos);
			vector = i * 32 + bitpos;
			FUNC1(vlapic->vm, vlapic->vcpuid, "EOI vector %d",
			    vector);
			FUNC2(vlapic, "vlapic_process_eoi");
			vlapic->isrvec_stk_top--;
			FUNC5(vlapic);
			if ((tmrptr[idx] & (1 << bitpos)) != 0) {
				FUNC4(vlapic->vm, vlapic->vcpuid,
				    vector);
			}
			return;
		}
	}
	FUNC0(vlapic->vm, vlapic->vcpuid, "Gratuitous EOI");
	FUNC6(vlapic->vm, vlapic->vcpuid, VLAPIC_GRATUITOUS_EOI, 1);
}