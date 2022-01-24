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
struct TYPE_2__ {int table_count; struct msix_table_entry* table; scalar_t__ function_mask; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;
struct msix_table_entry {int vector_control; int /*<<< orphan*/  msg_data; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int PCIM_MSIX_VCTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct pci_devinst *pi, int index)
{
	struct msix_table_entry *mte;

	if (!FUNC0(pi))
		return;

	if (pi->pi_msix.function_mask)
		return;

	if (index >= pi->pi_msix.table_count)
		return;

	mte = &pi->pi_msix.table[index];
	if ((mte->vector_control & PCIM_MSIX_VCTRL_MASK) == 0) {
		/* XXX Set PBA bit if interrupt is disabled */
		FUNC1(mte->addr, mte->msg_data);
	}
}