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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  SCI_INT ; 
 int basl_ncpu ; 
 int errno ; 

__attribute__((used)) static int
FUNC2(FILE *fp)
{
	int err;
	int i;

	err = 0;

	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve MADT template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0004]\t\tSignature : \"APIC\"\n");
	FUNC1(fp, "[0004]\t\tTable Length : 00000000\n");
	FUNC1(fp, "[0001]\t\tRevision : 01\n");
	FUNC1(fp, "[0001]\t\tChecksum : 00\n");
	FUNC1(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
	FUNC1(fp, "[0008]\t\tOem Table ID : \"BVMADT  \"\n");
	FUNC1(fp, "[0004]\t\tOem Revision : 00000001\n");

	/* iasl will fill in the compiler ID/revision fields */
	FUNC1(fp, "[0004]\t\tAsl Compiler ID : \"xxxx\"\n");
	FUNC1(fp, "[0004]\t\tAsl Compiler Revision : 00000000\n");
	FUNC1(fp, "\n");

	FUNC1(fp, "[0004]\t\tLocal Apic Address : FEE00000\n");
	FUNC1(fp, "[0004]\t\tFlags (decoded below) : 00000001\n");
	FUNC1(fp, "\t\t\tPC-AT Compatibility : 1\n");
	FUNC1(fp, "\n");

	/* Add a Processor Local APIC entry for each CPU */
	for (i = 0; i < basl_ncpu; i++) {
		FUNC1(fp, "[0001]\t\tSubtable Type : 00\n");
		FUNC1(fp, "[0001]\t\tLength : 08\n");
		/* iasl expects hex values for the proc and apic id's */
		FUNC1(fp, "[0001]\t\tProcessor ID : %02x\n", i);
		FUNC1(fp, "[0001]\t\tLocal Apic ID : %02x\n", i);
		FUNC1(fp, "[0004]\t\tFlags (decoded below) : 00000001\n");
		FUNC1(fp, "\t\t\tProcessor Enabled : 1\n");
		FUNC1(fp, "\n");
	}

	/* Always a single IOAPIC entry, with ID 0 */
	FUNC1(fp, "[0001]\t\tSubtable Type : 01\n");
	FUNC1(fp, "[0001]\t\tLength : 0C\n");
	/* iasl expects a hex value for the i/o apic id */
	FUNC1(fp, "[0001]\t\tI/O Apic ID : %02x\n", 0);
	FUNC1(fp, "[0001]\t\tReserved : 00\n");
	FUNC1(fp, "[0004]\t\tAddress : fec00000\n");
	FUNC1(fp, "[0004]\t\tInterrupt : 00000000\n");
	FUNC1(fp, "\n");

	/* Legacy IRQ0 is connected to pin 2 of the IOAPIC */
	FUNC1(fp, "[0001]\t\tSubtable Type : 02\n");
	FUNC1(fp, "[0001]\t\tLength : 0A\n");
	FUNC1(fp, "[0001]\t\tBus : 00\n");
	FUNC1(fp, "[0001]\t\tSource : 00\n");
	FUNC1(fp, "[0004]\t\tInterrupt : 00000002\n");
	FUNC1(fp, "[0002]\t\tFlags (decoded below) : 0005\n");
	FUNC1(fp, "\t\t\tPolarity : 1\n");
	FUNC1(fp, "\t\t\tTrigger Mode : 1\n");
	FUNC1(fp, "\n");

	FUNC1(fp, "[0001]\t\tSubtable Type : 02\n");
	FUNC1(fp, "[0001]\t\tLength : 0A\n");
	FUNC1(fp, "[0001]\t\tBus : 00\n");
	FUNC1(fp, "[0001]\t\tSource : %02X\n", SCI_INT);
	FUNC1(fp, "[0004]\t\tInterrupt : %08X\n", SCI_INT);
	FUNC1(fp, "[0002]\t\tFlags (decoded below) : 0000\n");
	FUNC1(fp, "\t\t\tPolarity : 3\n");
	FUNC1(fp, "\t\t\tTrigger Mode : 3\n");
	FUNC1(fp, "\n");

	/* Local APIC NMI is connected to LINT 1 on all CPUs */
	FUNC1(fp, "[0001]\t\tSubtable Type : 04\n");
	FUNC1(fp, "[0001]\t\tLength : 06\n");
	FUNC1(fp, "[0001]\t\tProcessorId : FF\n");
	FUNC1(fp, "[0002]\t\tFlags (decoded below) : 0005\n");
	FUNC1(fp, "\t\t\tPolarity : 1\n");
	FUNC1(fp, "\t\t\tTrigger Mode : 1\n");
	FUNC1(fp, "[0001]\t\tInterrupt : 01\n");
	FUNC1(fp, "\n");

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}