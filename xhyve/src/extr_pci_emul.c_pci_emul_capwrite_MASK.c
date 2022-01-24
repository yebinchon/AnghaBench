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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int CAP_START_OFFSET ; 
#define  PCIY_EXPRESS 130 
#define  PCIY_MSI 129 
#define  PCIY_MSIX 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int,int,int,int) ; 
 int FUNC3 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct pci_devinst *pi, int offset, int bytes, uint32_t val)
{
	int capid;
	uint8_t capoff, nextoff;

	/* Do not allow un-aligned writes */
	if ((offset & (bytes - 1)) != 0)
		return;

	/* Find the capability that we want to update */
	capoff = CAP_START_OFFSET;
	while (1) {
		nextoff = FUNC3(pi, capoff + 1);
		if (nextoff == 0)
			break;
		if (offset >= capoff && offset < nextoff)
			break;

		capoff = nextoff;
	}
	FUNC0(offset >= capoff);

	/*
	 * Capability ID and Next Capability Pointer are readonly.
	 * However, some o/s's do 4-byte writes that include these.
	 * For this case, trim the write back to 2 bytes and adjust
	 * the data.
	 */
	if (offset == capoff || offset == capoff + 1) {
		if (offset == capoff && bytes == 4) {
			bytes = 2;
			offset += 2;
			val >>= 16;
		} else
			return;
	}

	capid = FUNC3(pi, capoff);
	switch (capid) {
	case PCIY_MSI:
		FUNC1(pi, capoff, offset, bytes, val);
		break;
	case PCIY_MSIX:
		FUNC2(pi, capoff, offset, bytes, val);
		break;
	case PCIY_EXPRESS:
		FUNC4(pi, capoff, offset, bytes, val);
		break;
	default:
		break;
	}
}