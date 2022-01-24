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
 scalar_t__ FADT_OFFSET ; 
 scalar_t__ HPET_OFFSET ; 
 scalar_t__ MADT_OFFSET ; 
 scalar_t__ MCFG_OFFSET ; 
 scalar_t__ basl_acpi_base ; 
 int errno ; 

__attribute__((used)) static int
FUNC2(FILE *fp)
{
	int err;

	err = 0;

	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve XSDT template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0004]\t\tSignature : \"XSDT\"\n");
	FUNC1(fp, "[0004]\t\tTable Length : 00000000\n");
	FUNC1(fp, "[0001]\t\tRevision : 01\n");
	FUNC1(fp, "[0001]\t\tChecksum : 00\n");
	FUNC1(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
	FUNC1(fp, "[0008]\t\tOem Table ID : \"BVXSDT  \"\n");
	FUNC1(fp, "[0004]\t\tOem Revision : 00000001\n");
	/* iasl will fill in the compiler ID/revision fields */
	FUNC1(fp, "[0004]\t\tAsl Compiler ID : \"xxxx\"\n");
	FUNC1(fp, "[0004]\t\tAsl Compiler Revision : 00000000\n");
	FUNC1(fp, "\n");

	/* Add in pointers to the MADT, FADT and HPET */
	FUNC1(fp, "[0004]\t\tACPI Table Address 0 : 00000000%08X\n",
	    basl_acpi_base + MADT_OFFSET);
	FUNC1(fp, "[0004]\t\tACPI Table Address 1 : 00000000%08X\n",
	    basl_acpi_base + FADT_OFFSET);
	FUNC1(fp, "[0004]\t\tACPI Table Address 2 : 00000000%08X\n",
	    basl_acpi_base + HPET_OFFSET);
	FUNC1(fp, "[0004]\t\tACPI Table Address 3 : 00000000%08X\n",
	    basl_acpi_base + MCFG_OFFSET);

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}