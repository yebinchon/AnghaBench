
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ ACPI_PCI_DEVICE ;


 int ACPI_FREE (TYPE_1__*) ;

__attribute__((used)) static void
AcpiHwDeletePciList (
    ACPI_PCI_DEVICE *ListHead)
{
    ACPI_PCI_DEVICE *Next;
    ACPI_PCI_DEVICE *Previous;


    Next = ListHead;
    while (Next)
    {
        Previous = Next;
        Next = Previous->Next;
        ACPI_FREE (Previous);
    }
}
