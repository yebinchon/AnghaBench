#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Device; struct TYPE_5__* Next; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PCI_DEVICE ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC4 (
    ACPI_HANDLE             RootPciDevice,
    ACPI_HANDLE             PciRegion,
    ACPI_PCI_DEVICE         **ReturnListHead)
{
    ACPI_HANDLE             CurrentDevice;
    ACPI_HANDLE             ParentDevice;
    ACPI_STATUS             Status;
    ACPI_PCI_DEVICE         *ListElement;


    /*
     * Ascend namespace branch until the RootPciDevice is reached, building
     * a list of device nodes. Loop will exit when either the PCI device is
     * found, or the root of the namespace is reached.
     */
    *ReturnListHead = NULL;
    CurrentDevice = PciRegion;
    while (1)
    {
        Status = FUNC2 (CurrentDevice, &ParentDevice);
        if (FUNC1 (Status))
        {
            /* Must delete the list before exit */

            FUNC3 (*ReturnListHead);
            return (Status);
        }

        /* Finished when we reach the PCI root device (PNP0A03 or PNP0A08) */

        if (ParentDevice == RootPciDevice)
        {
            return (AE_OK);
        }

        ListElement = FUNC0 (sizeof (ACPI_PCI_DEVICE));
        if (!ListElement)
        {
            /* Must delete the list before exit */

            FUNC3 (*ReturnListHead);
            return (AE_NO_MEMORY);
        }

        /* Put new element at the head of the list */

        ListElement->Next = *ReturnListHead;
        ListElement->Device = ParentDevice;
        *ReturnListHead = ListElement;

        CurrentDevice = ParentDevice;
    }
}