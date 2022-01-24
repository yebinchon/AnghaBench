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
struct slotinfo {TYPE_1__* si_funcs; } ;
struct pci_devinst {TYPE_2__* pi_d; } ;
struct businfo {int iobase; int iolimit; int membase32; int memlimit32; int membase64; int memlimit64; struct slotinfo* slotinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* pe_write_dsdt ) (struct pci_devinst*) ;} ;
struct TYPE_3__ {struct pci_devinst* fi_devi; } ;

/* Variables and functions */
 int MAXFUNCS ; 
 int MAXSLOTS ; 
 int PCI_EMUL_IOBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  pci_apic_prt_entry ; 
 struct businfo** pci_businfo ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  pci_pirq_prt_entry ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_devinst*) ; 

__attribute__((used)) static void
FUNC8(int bus)
{
	struct businfo *bi;
	struct slotinfo *si;
	struct pci_devinst *pi;
	int count, func, slot;

	/*
	 * If there are no devices on this 'bus' then just return.
	 */
	if ((bi = pci_businfo[bus]) == NULL) {
		/*
		 * Bus 0 is special because it decodes the I/O ports used
		 * for PCI config space access even if there are no devices
		 * on it.
		 */
		if (bus != 0)
			return;
	}

	FUNC3("  Device (PC%02X)", bus);
	FUNC3("  {");
	FUNC3("    Name (_HID, EisaId (\"PNP0A03\"))");
	FUNC3("    Name (_ADR, Zero)");

	FUNC3("    Method (_BBN, 0, NotSerialized)");
	FUNC3("    {");
	FUNC3("        Return (0x%08X)", bus);
	FUNC3("    }");
	FUNC3("    Name (_CRS, ResourceTemplate ()");
	FUNC3("    {");
	FUNC3("      WordBusNumber (ResourceProducer, MinFixed, "
	    "MaxFixed, PosDecode,");
	FUNC3("        0x0000,             // Granularity");
	FUNC3("        0x%04X,             // Range Minimum", bus);
	FUNC3("        0x%04X,             // Range Maximum", bus);
	FUNC3("        0x0000,             // Translation Offset");
	FUNC3("        0x0001,             // Length");
	FUNC3("        ,, )");

	if (bus == 0) {
		FUNC2(3);
		FUNC1(0xCF8, 8);
		FUNC4(3);

		FUNC3("      WordIO (ResourceProducer, MinFixed, MaxFixed, "
		    "PosDecode, EntireRange,");
		FUNC3("        0x0000,             // Granularity");
		FUNC3("        0x0000,             // Range Minimum");
		FUNC3("        0x0CF7,             // Range Maximum");
		FUNC3("        0x0000,             // Translation Offset");
		FUNC3("        0x0CF8,             // Length");
		FUNC3("        ,, , TypeStatic)");

		FUNC3("      WordIO (ResourceProducer, MinFixed, MaxFixed, "
		    "PosDecode, EntireRange,");
		FUNC3("        0x0000,             // Granularity");
		FUNC3("        0x0D00,             // Range Minimum");
		FUNC3("        0x%04X,             // Range Maximum",
		    PCI_EMUL_IOBASE - 1);
		FUNC3("        0x0000,             // Translation Offset");
		FUNC3("        0x%04X,             // Length",
		    PCI_EMUL_IOBASE - 0x0D00);
		FUNC3("        ,, , TypeStatic)");

		if (bi == NULL) {
			FUNC3("    })");
			goto done;
		}
	}
	FUNC0(bi != NULL);

	/* i/o window */
	FUNC3("      WordIO (ResourceProducer, MinFixed, MaxFixed, "
	    "PosDecode, EntireRange,");
	FUNC3("        0x0000,             // Granularity");
	FUNC3("        0x%04X,             // Range Minimum", bi->iobase);
	FUNC3("        0x%04X,             // Range Maximum",
	    bi->iolimit - 1);
	FUNC3("        0x0000,             // Translation Offset");
	FUNC3("        0x%04X,             // Length",
	    bi->iolimit - bi->iobase);
	FUNC3("        ,, , TypeStatic)");

	/* mmio window (32-bit) */
	FUNC3("      DWordMemory (ResourceProducer, PosDecode, "
	    "MinFixed, MaxFixed, NonCacheable, ReadWrite,");
	FUNC3("        0x00000000,         // Granularity");
	FUNC3("        0x%08X,         // Range Minimum\n", bi->membase32);
	FUNC3("        0x%08X,         // Range Maximum\n",
	    bi->memlimit32 - 1);
	FUNC3("        0x00000000,         // Translation Offset");
	FUNC3("        0x%08X,         // Length\n",
	    bi->memlimit32 - bi->membase32);
	FUNC3("        ,, , AddressRangeMemory, TypeStatic)");

	/* mmio window (64-bit) */
	FUNC3("      QWordMemory (ResourceProducer, PosDecode, "
	    "MinFixed, MaxFixed, NonCacheable, ReadWrite,");
	FUNC3("        0x0000000000000000, // Granularity");
	FUNC3("        0x%016lX, // Range Minimum\n", bi->membase64);
	FUNC3("        0x%016lX, // Range Maximum\n",
	    bi->memlimit64 - 1);
	FUNC3("        0x0000000000000000, // Translation Offset");
	FUNC3("        0x%016lX, // Length\n",
	    bi->memlimit64 - bi->membase64);
	FUNC3("        ,, , AddressRangeMemory, TypeStatic)");
	FUNC3("    })");

	count = FUNC5(bus);
	if (count != 0) {
		FUNC2(2);
		FUNC3("Name (PPRT, Package ()");
		FUNC3("{");
		FUNC6(bus, pci_pirq_prt_entry, NULL);
 		FUNC3("})");
		FUNC3("Name (APRT, Package ()");
		FUNC3("{");
		FUNC6(bus, pci_apic_prt_entry, NULL);
 		FUNC3("})");
		FUNC3("Method (_PRT, 0, NotSerialized)");
		FUNC3("{");
		FUNC3("  If (PICM)");
		FUNC3("  {");
		FUNC3("    Return (APRT)");
		FUNC3("  }");
		FUNC3("  Else");
		FUNC3("  {");
		FUNC3("    Return (PPRT)");
		FUNC3("  }");
		FUNC3("}");
		FUNC4(2);
	}

	FUNC2(2);
	for (slot = 0; slot < MAXSLOTS; slot++) {
		si = &bi->slotinfo[slot];
		for (func = 0; func < MAXFUNCS; func++) {
			pi = si->si_funcs[func].fi_devi;
			if (pi != NULL && pi->pi_d->pe_write_dsdt != NULL)
				pi->pi_d->pe_write_dsdt(pi);
		}
	}
	FUNC4(2);
done:
	FUNC3("  }");
}