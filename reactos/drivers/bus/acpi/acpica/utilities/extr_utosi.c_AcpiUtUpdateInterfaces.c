
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int Flags; struct TYPE_3__* Next; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 int ACPI_DISABLE_INTERFACES ;
 int ACPI_FEATURE_STRINGS ;
 int ACPI_OSI_FEATURE ;
 int ACPI_OSI_INVALID ;
 int ACPI_VENDOR_STRINGS ;
 int AE_OK ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;

ACPI_STATUS
AcpiUtUpdateInterfaces (
    UINT8 Action)
{
    ACPI_INTERFACE_INFO *NextInterface;


    NextInterface = AcpiGbl_SupportedInterfaces;
    while (NextInterface)
    {
        if (((NextInterface->Flags & ACPI_OSI_FEATURE) &&
             (Action & ACPI_FEATURE_STRINGS)) ||
            (!(NextInterface->Flags & ACPI_OSI_FEATURE) &&
             (Action & ACPI_VENDOR_STRINGS)))
        {
            if (Action & ACPI_DISABLE_INTERFACES)
            {


                NextInterface->Flags |= ACPI_OSI_INVALID;
            }
            else
            {


                NextInterface->Flags &= ~ACPI_OSI_INVALID;
            }
        }

        NextInterface = NextInterface->Next;
    }

    return (AE_OK);
}
