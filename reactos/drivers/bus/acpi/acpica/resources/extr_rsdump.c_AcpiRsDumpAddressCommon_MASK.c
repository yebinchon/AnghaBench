#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_5__ {int ResourceType; } ;
struct TYPE_6__ {TYPE_1__ Address; } ;
typedef  TYPE_2__ ACPI_RESOURCE_DATA ;

/* Variables and functions */
#define  ACPI_BUS_NUMBER_RANGE 130 
 int /*<<< orphan*/  FUNC0 () ; 
#define  ACPI_IO_RANGE 129 
#define  ACPI_MEMORY_RANGE 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiRsDumpGeneralFlags ; 
 int /*<<< orphan*/  AcpiRsDumpIoFlags ; 
 int /*<<< orphan*/  AcpiRsDumpMemoryFlags ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4 (
    ACPI_RESOURCE_DATA      *Resource)
{
    FUNC0 ();


   /* Decode the type-specific flags */

    switch (Resource->Address.ResourceType)
    {
    case ACPI_MEMORY_RANGE:

        FUNC1 (Resource, AcpiRsDumpMemoryFlags);
        break;

    case ACPI_IO_RANGE:

        FUNC1 (Resource, AcpiRsDumpIoFlags);
        break;

    case ACPI_BUS_NUMBER_RANGE:

        FUNC3 ("Resource Type", "Bus Number Range");
        break;

    default:

        FUNC2 ("Resource Type",
            (UINT8) Resource->Address.ResourceType);
        break;
    }

    /* Decode the general flags */

    FUNC1 (Resource, AcpiRsDumpGeneralFlags);
}