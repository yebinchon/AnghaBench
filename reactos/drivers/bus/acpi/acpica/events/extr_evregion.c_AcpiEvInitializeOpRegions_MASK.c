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
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 size_t ACPI_NUM_DEFAULT_SPACES ; 
 int /*<<< orphan*/  ACPI_REG_CONNECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AcpiGbl_DefaultAddressSpaces ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvInitializeOpRegions ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    void)
{
    ACPI_STATUS             Status;
    UINT32                  i;


    FUNC1 (EvInitializeOpRegions);


    Status = FUNC4 (ACPI_MTX_NAMESPACE);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    /* Run the _REG methods for OpRegions in each default address space */

    for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++)
    {
        /*
         * Make sure the installed handler is the DEFAULT handler. If not the
         * default, the _REG methods will have already been run (when the
         * handler was installed)
         */
        if (FUNC3 (AcpiGbl_RootNode,
               AcpiGbl_DefaultAddressSpaces[i]))
        {
            FUNC2 (AcpiGbl_RootNode,
                AcpiGbl_DefaultAddressSpaces[i], ACPI_REG_CONNECT);
        }
    }

    (void) FUNC5 (ACPI_MTX_NAMESPACE);
    FUNC6 (Status);
}