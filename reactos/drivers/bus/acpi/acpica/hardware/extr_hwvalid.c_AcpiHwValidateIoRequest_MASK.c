#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_3__ {int End; int Start; scalar_t__ OsiDependency; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PORT_INFO ;
typedef  int ACPI_IO_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  ACPI_DB_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ACPI_PORT_INFO_ENTRIES ; 
 int ACPI_UINT16_MAX ; 
 int /*<<< orphan*/  AE_AML_ILLEGAL_ADDRESS ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ AcpiGbl_OsiData ; 
 TYPE_1__* AcpiProtectedPorts ; 
 int /*<<< orphan*/  HwValidateIoRequest ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC6 (
    ACPI_IO_ADDRESS         Address,
    UINT32                  BitWidth)
{
    UINT32                  i;
    UINT32                  ByteWidth;
    ACPI_IO_ADDRESS         LastAddress;
    const ACPI_PORT_INFO    *PortInfo;


    FUNC4 (HwValidateIoRequest);


    /* Supported widths are 8/16/32 */

    if ((BitWidth != 8) &&
        (BitWidth != 16) &&
        (BitWidth != 32))
    {
        FUNC2 ((AE_INFO,
            "Bad BitWidth parameter: %8.8X", BitWidth));
        FUNC5 (AE_BAD_PARAMETER);
    }

    PortInfo = AcpiProtectedPorts;
    ByteWidth = FUNC1 (BitWidth);
    LastAddress = Address + ByteWidth - 1;

    FUNC0 ((ACPI_DB_IO,
        "Address %8.8X%8.8X LastAddress %8.8X%8.8X Length %X",
        FUNC3 (Address), FUNC3 (LastAddress),
        ByteWidth));

    /* Maximum 16-bit address in I/O space */

    if (LastAddress > ACPI_UINT16_MAX)
    {
        FUNC2 ((AE_INFO,
            "Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X",
            FUNC3 (Address), ByteWidth));
        FUNC5 (AE_LIMIT);
    }

    /* Exit if requested address is not within the protected port table */

    if (Address > AcpiProtectedPorts[ACPI_PORT_INFO_ENTRIES - 1].End)
    {
        FUNC5 (AE_OK);
    }

    /* Check request against the list of protected I/O ports */

    for (i = 0; i < ACPI_PORT_INFO_ENTRIES; i++, PortInfo++)
    {
        /*
         * Check if the requested address range will write to a reserved
         * port. There are four cases to consider:
         *
         * 1) Address range is contained completely in the port address range
         * 2) Address range overlaps port range at the port range start
         * 3) Address range overlaps port range at the port range end
         * 4) Address range completely encompasses the port range
         */
        if ((Address <= PortInfo->End) && (LastAddress >= PortInfo->Start))
        {
            /* Port illegality may depend on the _OSI calls made by the BIOS */

            if (AcpiGbl_OsiData >= PortInfo->OsiDependency)
            {
                FUNC0 ((ACPI_DB_VALUES,
                    "Denied AML access to port 0x%8.8X%8.8X/%X (%s 0x%.4X-0x%.4X)\n",
                    FUNC3 (Address), ByteWidth, PortInfo->Name,
                    PortInfo->Start, PortInfo->End));

                FUNC5 (AE_AML_ILLEGAL_ADDRESS);
            }
        }

        /* Finished if address range ends before the end of this port */

        if (LastAddress <= PortInfo->End)
        {
            break;
        }
    }

    FUNC5 (AE_OK);
}