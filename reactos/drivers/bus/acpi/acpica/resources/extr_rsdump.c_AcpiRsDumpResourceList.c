
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_7__ {size_t Type; } ;
struct TYPE_9__ {TYPE_1__ CommonSerialBus; } ;
struct TYPE_8__ {size_t Type; TYPE_4__ Data; int Length; } ;
typedef TYPE_2__ ACPI_RESOURCE ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_IS_DEBUG_ENABLED (int ,int ) ;
 int ACPI_LV_RESOURCES ;
 TYPE_2__* ACPI_NEXT_RESOURCE (TYPE_2__*) ;
 size_t ACPI_RESOURCE_TYPE_END_TAG ;
 size_t ACPI_RESOURCE_TYPE_MAX ;
 size_t ACPI_RESOURCE_TYPE_SERIAL_BUS ;
 int * AcpiGbl_DumpResourceDispatch ;
 int * AcpiGbl_DumpSerialBusDispatch ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiRsDumpDescriptor (TYPE_4__*,int ) ;
 int _COMPONENT ;

void
AcpiRsDumpResourceList (
    ACPI_RESOURCE *ResourceList)
{
    UINT32 Count = 0;
    UINT32 Type;


    ACPI_FUNCTION_ENTRY ();




    if (!ACPI_IS_DEBUG_ENABLED (ACPI_LV_RESOURCES, _COMPONENT))
    {
        return;
    }



    do
    {
        AcpiOsPrintf ("\n[%02X] ", Count);
        Count++;



        Type = ResourceList->Type;
        if (Type > ACPI_RESOURCE_TYPE_MAX)
        {
            AcpiOsPrintf (
                "Invalid descriptor type (%X) in resource list\n",
                ResourceList->Type);
            return;
        }



        if (!ResourceList->Length)
        {
            AcpiOsPrintf (
                "Invalid zero length descriptor in resource list\n");
            return;
        }



        if (Type == ACPI_RESOURCE_TYPE_SERIAL_BUS)
        {
            AcpiRsDumpDescriptor (&ResourceList->Data,
                AcpiGbl_DumpSerialBusDispatch[
                    ResourceList->Data.CommonSerialBus.Type]);
        }
        else
        {
            AcpiRsDumpDescriptor (&ResourceList->Data,
                AcpiGbl_DumpResourceDispatch[Type]);
        }



        ResourceList = ACPI_NEXT_RESOURCE (ResourceList);



    } while (Type != ACPI_RESOURCE_TYPE_END_TAG);
}
