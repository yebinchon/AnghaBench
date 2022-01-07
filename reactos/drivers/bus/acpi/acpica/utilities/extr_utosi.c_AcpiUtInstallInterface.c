
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int Flags; void* Name; } ;
typedef int ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 void* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_OSI_DYNAMIC ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int strcpy (void*,int ) ;
 int strlen (int ) ;

ACPI_STATUS
AcpiUtInstallInterface (
    ACPI_STRING InterfaceName)
{
    ACPI_INTERFACE_INFO *InterfaceInfo;




    InterfaceInfo = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_INTERFACE_INFO));
    if (!InterfaceInfo)
    {
        return (AE_NO_MEMORY);
    }

    InterfaceInfo->Name = ACPI_ALLOCATE_ZEROED (strlen (InterfaceName) + 1);
    if (!InterfaceInfo->Name)
    {
        ACPI_FREE (InterfaceInfo);
        return (AE_NO_MEMORY);
    }



    strcpy (InterfaceInfo->Name, InterfaceName);
    InterfaceInfo->Flags = ACPI_OSI_DYNAMIC;
    InterfaceInfo->Next = AcpiGbl_SupportedInterfaces;

    AcpiGbl_SupportedInterfaces = InterfaceInfo;
    return (AE_OK);
}
