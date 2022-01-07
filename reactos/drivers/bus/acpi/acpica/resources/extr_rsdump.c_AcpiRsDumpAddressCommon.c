
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_5__ {int ResourceType; } ;
struct TYPE_6__ {TYPE_1__ Address; } ;
typedef TYPE_2__ ACPI_RESOURCE_DATA ;



 int ACPI_FUNCTION_ENTRY () ;


 int AcpiRsDumpDescriptor (TYPE_2__*,int ) ;
 int AcpiRsDumpGeneralFlags ;
 int AcpiRsDumpIoFlags ;
 int AcpiRsDumpMemoryFlags ;
 int AcpiRsOutInteger8 (char*,int ) ;
 int AcpiRsOutString (char*,char*) ;

__attribute__((used)) static void
AcpiRsDumpAddressCommon (
    ACPI_RESOURCE_DATA *Resource)
{
    ACPI_FUNCTION_ENTRY ();




    switch (Resource->Address.ResourceType)
    {
    case 128:

        AcpiRsDumpDescriptor (Resource, AcpiRsDumpMemoryFlags);
        break;

    case 129:

        AcpiRsDumpDescriptor (Resource, AcpiRsDumpIoFlags);
        break;

    case 130:

        AcpiRsOutString ("Resource Type", "Bus Number Range");
        break;

    default:

        AcpiRsOutInteger8 ("Resource Type",
            (UINT8) Resource->Address.ResourceType);
        break;
    }



    AcpiRsDumpDescriptor (Resource, AcpiRsDumpGeneralFlags);
}
