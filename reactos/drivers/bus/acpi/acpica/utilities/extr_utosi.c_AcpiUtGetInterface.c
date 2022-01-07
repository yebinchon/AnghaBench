
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int Name; } ;
typedef int ACPI_STRING ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int strcmp (int ,int ) ;

ACPI_INTERFACE_INFO *
AcpiUtGetInterface (
    ACPI_STRING InterfaceName)
{
    ACPI_INTERFACE_INFO *NextInterface;


    NextInterface = AcpiGbl_SupportedInterfaces;
    while (NextInterface)
    {
        if (!strcmp (InterfaceName, NextInterface->Name))
        {
            return (NextInterface);
        }

        NextInterface = NextInterface->Next;
    }

    return (((void*)0));
}
