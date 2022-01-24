#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector_control; } ;

/* Variables and functions */
 int MAX_MSIX_TABLE_ENTRIES ; 
 int MSIX_TABLE_ENTRY_SIZE ; 
 int /*<<< orphan*/  PCIM_MSIX_VCTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int,size_t) ; 

__attribute__((used)) static void
FUNC2(struct pci_devinst *pi, int table_entries)
{
	int i, table_size;

	FUNC0(table_entries > 0);
	FUNC0(table_entries <= MAX_MSIX_TABLE_ENTRIES);

	table_size = table_entries * MSIX_TABLE_ENTRY_SIZE;
	pi->pi_msix.table = FUNC1(1, ((size_t) table_size));

	/* set mask bit of vector control register */
	for (i = 0; i < table_entries; i++)
		pi->pi_msix.table[i].vector_control |= PCIM_MSIX_VCTRL_MASK;
}