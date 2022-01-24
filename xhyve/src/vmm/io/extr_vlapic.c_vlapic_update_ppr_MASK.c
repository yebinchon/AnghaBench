#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vlapic {int* isrvec_stk; size_t isrvec_stk_top; TYPE_1__* apic_page; } ;
struct TYPE_2__ {int isr0; int ppr; scalar_t__ tpr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct vlapic *vlapic)
{
	int isrvec, tpr, ppr;

	/*
	 * Note that the value on the stack at index 0 is always 0.
	 *
	 * This is a placeholder for the value of ISRV when none of the
	 * bits is set in the ISRx registers.
	 */
	isrvec = vlapic->isrvec_stk[vlapic->isrvec_stk_top];
	tpr = (int) vlapic->apic_page->tpr;

#if 1
	{
		int i, lastprio, curprio, vector, idx;
		uint32_t *isrptr;

		if (vlapic->isrvec_stk_top == 0 && isrvec != 0)
			FUNC3("isrvec_stk is corrupted: %d\n", isrvec);

		/*
		 * Make sure that the priority of the nested interrupts is
		 * always increasing.
		 */
		lastprio = -1;
		for (i = 1; i <= vlapic->isrvec_stk_top; i++) {
			curprio = FUNC0(vlapic->isrvec_stk[i]);
			if (curprio <= lastprio) {
				FUNC2(vlapic);
				FUNC3("isrvec_stk does not satisfy invariant\n");
			}
			lastprio = curprio;
		}

		/*
		 * Make sure that each bit set in the ISRx registers has a
		 * corresponding entry on the isrvec stack.
		 */
		i = 1;
		isrptr = &vlapic->apic_page->isr0;
		for (vector = 0; vector < 256; vector++) {
			idx = (vector / 32) * 4;
			if (isrptr[idx] & (1 << (vector % 32))) {
				if (i > vlapic->isrvec_stk_top ||
				    vlapic->isrvec_stk[i] != vector) {
					FUNC2(vlapic);
					FUNC3("ISR and isrvec_stk out of sync\n");
				}
				i++;
			}
		}
	}
#endif

	if (FUNC0(tpr) >= FUNC0(isrvec))
		ppr = tpr;
	else
		ppr = isrvec & 0xf0;

	vlapic->apic_page->ppr = (uint32_t) ppr;
	FUNC1(vlapic, "vlapic_update_ppr 0x%02x", ppr);
}