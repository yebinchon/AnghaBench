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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
typedef  enum pcibar_type { ____Placeholder_pcibar_type } pcibar_type ;
struct TYPE_2__ {int type; int addr; int size; } ;

/* Variables and functions */
#define  PCIBAR_IO 132 
#define  PCIBAR_MEM32 131 
#define  PCIBAR_MEM64 130 
#define  PCIBAR_MEMHI64 129 
#define  PCIBAR_NONE 128 
 int PCIM_BAR_IO_BASE ; 
 int PCIM_BAR_IO_SPACE ; 
 int PCIM_BAR_MEM_32 ; 
 int PCIM_BAR_MEM_64 ; 
 int PCIM_BAR_MEM_BASE ; 
 int PCIM_BAR_MEM_PREFETCH ; 
 int PCIM_BAR_MEM_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCI_BARMAX ; 
 int PCI_EMUL_IOLIMIT ; 
 int PCI_EMUL_MEMLIMIT32 ; 
 int PCI_EMUL_MEMLIMIT64 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (long) ; 
 int FUNC3 (int*,int,int,int*) ; 
 int pci_emul_iobase ; 
 int pci_emul_membase32 ; 
 int pci_emul_membase64 ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_devinst*,int) ; 

int
FUNC7(struct pci_devinst *pdi, int idx, uint64_t hostbase,
		    enum pcibar_type type, uint64_t size)
{
	int error;
	uint64_t *baseptr, limit, addr, mask, lobits, bar;

	FUNC1(idx >= 0 && idx <= PCI_BARMAX);

	addr = 0;
	limit = 0;

	if ((size & (size - 1)) != 0)
		size = 1UL << FUNC2((long) size); /* round up to a power of 2 */

	/* Enforce minimum BAR sizes required by the PCI standard */
	if (type == PCIBAR_IO) {
		if (size < 4)
			size = 4;
	} else {
		if (size < 16)
			size = 16;
	}

	switch (type) {
	case PCIBAR_NONE:
		baseptr = NULL;
		addr = mask = lobits = 0;
		break;
	case PCIBAR_IO:
		baseptr = &pci_emul_iobase;
		limit = PCI_EMUL_IOLIMIT;
		mask = PCIM_BAR_IO_BASE;
		lobits = PCIM_BAR_IO_SPACE;
		break;
	case PCIBAR_MEM64:
		/*
		 * XXX
		 * Some drivers do not work well if the 64-bit BAR is allocated
		 * above 4GB. Allow for this by allocating small requests under
		 * 4GB unless then allocation size is larger than some arbitrary
		 * number (32MB currently).
		 */
		if (size > 32 * 1024 * 1024) {
			/*
			 * XXX special case for device requiring peer-peer DMA
			 */
			if (size == 0x100000000UL)
				baseptr = &hostbase;
			else
				baseptr = &pci_emul_membase64;
			limit = PCI_EMUL_MEMLIMIT64;
			mask = PCIM_BAR_MEM_BASE;
			lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_64 |
				 PCIM_BAR_MEM_PREFETCH;
			break;
		} else {
			baseptr = &pci_emul_membase32;
			limit = PCI_EMUL_MEMLIMIT32;
			mask = PCIM_BAR_MEM_BASE;
			lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_64;
		}
		break;
	case PCIBAR_MEM32:
		baseptr = &pci_emul_membase32;
		limit = PCI_EMUL_MEMLIMIT32;
		mask = PCIM_BAR_MEM_BASE;
		lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_32;
		break;
	case PCIBAR_MEMHI64:
		FUNC5("pci_emul_alloc_base: invalid bar type %d\n", type);
		FUNC1(0);
	}

	if (baseptr != NULL) {
		error = FUNC3(baseptr, limit, size, &addr);
		if (error != 0)
			return (error);
	}

	pdi->pi_bar[idx].type = type;
	pdi->pi_bar[idx].addr = addr;
	pdi->pi_bar[idx].size = size;

	/* Initialize the BAR register in config space */
	bar = (addr & mask) | lobits;
	FUNC4(pdi, FUNC0(idx), ((uint32_t) bar));

	if (type == PCIBAR_MEM64) {
		FUNC1(idx + 1 <= PCI_BARMAX);
		pdi->pi_bar[idx + 1].type = PCIBAR_MEMHI64;
		FUNC4(pdi, FUNC0(idx + 1), bar >> 32);
	}
	
	FUNC6(pdi, idx);

	return (0);
}