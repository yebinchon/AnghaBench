#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_8__ {int Flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  Revision; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_TABLE_FADT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FADT_CONFORMANCE ; 
 int ACPI_FADT_HW_REDUCED ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_2__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  AcpiGbl_ReducedHardware ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void
FUNC6 (
    ACPI_TABLE_HEADER       *Table,
    UINT32                  Length)
{

    /*
     * Check if the FADT is larger than the largest table that we expect
     * (typically the current ACPI specification version). If so, truncate
     * the table, and issue a warning.
     */
    if (Length > sizeof (ACPI_TABLE_FADT))
    {
        FUNC0 ((AE_INFO,
            "FADT (revision %u) is longer than %s length, "
            "truncating length %u to %u",
            Table->Revision, ACPI_FADT_CONFORMANCE, Length,
            (UINT32) sizeof (ACPI_TABLE_FADT)));
    }

    /* Clear the entire local FADT */

    FUNC5 (&AcpiGbl_FADT, 0, sizeof (ACPI_TABLE_FADT));

    /* Copy the original FADT, up to sizeof (ACPI_TABLE_FADT) */

    FUNC4 (&AcpiGbl_FADT, Table,
        FUNC1 (Length, sizeof (ACPI_TABLE_FADT)));

    /* Take a copy of the Hardware Reduced flag */

    AcpiGbl_ReducedHardware = FALSE;
    if (AcpiGbl_FADT.Flags & ACPI_FADT_HW_REDUCED)
    {
        AcpiGbl_ReducedHardware = TRUE;
    }

    /* Convert the local copy of the FADT to the common internal format */

    FUNC2 ();

    /* Initialize the global ACPI register structures */

    FUNC3 ();
}