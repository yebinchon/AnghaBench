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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int table_count; scalar_t__ table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;

/* Variables and functions */
 int MSIX_TABLE_ENTRY_SIZE ; 
 scalar_t__ FUNC0 (struct pci_devinst*,int) ; 

uint64_t
FUNC1(struct pci_devinst *pi, uint64_t offset, int size)
{
	char *dest;
	int msix_entry_offset;
	int tab_index;
	uint64_t retval = ~((uint64_t) 0);

	/*
	 * The PCI standard only allows 4 and 8 byte accesses to the MSI-X
	 * table but we also allow 1 byte access to accomodate reads from
	 * ddb.
	 */
	if (size != 1 && size != 4 && size != 8)
		return (retval);

	msix_entry_offset = offset % MSIX_TABLE_ENTRY_SIZE;

	/* support only aligned reads */
	if ((msix_entry_offset % size) != 0) {
		return (retval);
	}

	tab_index = (int) (offset / MSIX_TABLE_ENTRY_SIZE);

	if (tab_index < pi->pi_msix.table_count) {
		/* valid MSI-X Table access */
		dest = (char *)(pi->pi_msix.table + tab_index);
		dest += msix_entry_offset;

		if (size == 1)
			retval = *((uint8_t *)((void *) dest));
		else if (size == 4)
			retval = *((uint32_t *)((void *) dest));
		else
			retval = *((uint64_t *)((void *) dest));
	} else if (FUNC0(pi, offset)) {
		/* return 0 for PBA access */
		retval = 0;
	}

	return (retval);
}