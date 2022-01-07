
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Flags; struct TYPE_4__* Name; struct TYPE_4__* Next; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_OSI_DEFAULT_INVALID ;
 int ACPI_OSI_DYNAMIC ;
 int ACPI_OSI_INVALID ;
 int ACPI_WAIT_FOREVER ;
 int AE_OK ;
 int AcpiGbl_OsiMutex ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsReleaseMutex (int ) ;

ACPI_STATUS
AcpiUtInterfaceTerminate (
    void)
{
    ACPI_STATUS Status;
    ACPI_INTERFACE_INFO *NextInterface;


    Status = AcpiOsAcquireMutex (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    NextInterface = AcpiGbl_SupportedInterfaces;
    while (NextInterface)
    {
        AcpiGbl_SupportedInterfaces = NextInterface->Next;

        if (NextInterface->Flags & ACPI_OSI_DYNAMIC)
        {


            ACPI_FREE (NextInterface->Name);
            ACPI_FREE (NextInterface);
        }
        else
        {


            if (NextInterface->Flags & ACPI_OSI_DEFAULT_INVALID)
            {
                NextInterface->Flags |= ACPI_OSI_INVALID;
            }
            else
            {
                NextInterface->Flags &= ~ACPI_OSI_INVALID;
            }
        }

        NextInterface = AcpiGbl_SupportedInterfaces;
    }

    AcpiOsReleaseMutex (AcpiGbl_OsiMutex);
    return (AE_OK);
}
