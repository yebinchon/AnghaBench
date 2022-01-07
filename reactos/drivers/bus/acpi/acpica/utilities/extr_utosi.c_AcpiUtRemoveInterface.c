
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Flags; struct TYPE_5__* Next; struct TYPE_5__* Name; } ;
typedef int ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_OSI_DYNAMIC ;
 int ACPI_OSI_INVALID ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int strcmp (int ,TYPE_1__*) ;

ACPI_STATUS
AcpiUtRemoveInterface (
    ACPI_STRING InterfaceName)
{
    ACPI_INTERFACE_INFO *PreviousInterface;
    ACPI_INTERFACE_INFO *NextInterface;


    PreviousInterface = NextInterface = AcpiGbl_SupportedInterfaces;
    while (NextInterface)
    {
        if (!strcmp (InterfaceName, NextInterface->Name))
        {




            if (NextInterface->Flags & ACPI_OSI_DYNAMIC)
            {


                if (PreviousInterface == NextInterface)
                {
                    AcpiGbl_SupportedInterfaces = NextInterface->Next;
                }
                else
                {
                    PreviousInterface->Next = NextInterface->Next;
                }

                ACPI_FREE (NextInterface->Name);
                ACPI_FREE (NextInterface);
            }
            else
            {




                if (NextInterface->Flags & ACPI_OSI_INVALID)
                {
                    return (AE_NOT_EXIST);
                }

                NextInterface->Flags |= ACPI_OSI_INVALID;
            }

            return (AE_OK);
        }

        PreviousInterface = NextInterface;
        NextInterface = NextInterface->Next;
    }



    return (AE_NOT_EXIST);
}
