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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int table_bar; int pba_bar; int table_count; scalar_t__ pba_size; scalar_t__ pba_offset; scalar_t__ table_offset; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;
struct msixcap {int dummy; } ;
typedef  int /*<<< orphan*/  msixcap ;

/* Variables and functions */
 int MAX_MSIX_TABLE_ENTRIES ; 
 int MSIX_TABLE_ENTRY_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int PCIR_MAX_BAR_0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pci_devinst*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msixcap*,int,int,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned int) ; 

int
FUNC7(struct pci_devinst *pi, int msgnum, int barnum)
{
	uint32_t tab_size;
	struct msixcap msixcap;

	FUNC1(msgnum >= 1 && msgnum <= MAX_MSIX_TABLE_ENTRIES);
	FUNC1(barnum >= 0 && barnum <= PCIR_MAX_BAR_0);
	
	tab_size = (uint32_t) (msgnum * MSIX_TABLE_ENTRY_SIZE);

	/* Align table size to nearest 4K */
	tab_size = FUNC6(tab_size, 4096u);

	pi->pi_msix.table_bar = barnum;
	pi->pi_msix.pba_bar   = barnum;
	pi->pi_msix.table_offset = 0;
	pi->pi_msix.table_count = msgnum;
	pi->pi_msix.pba_offset = tab_size;
	pi->pi_msix.pba_size = FUNC0(msgnum);

	FUNC4(pi, msgnum);

	FUNC5(&msixcap, msgnum, barnum, tab_size);

	/* allocate memory for MSI-X Table and PBA */
	FUNC3(pi, barnum, PCIBAR_MEM32,
		(tab_size + ((uint32_t) pi->pi_msix.pba_size)));

	return (FUNC2(pi, (u_char *)&msixcap,
					sizeof(msixcap)));
}