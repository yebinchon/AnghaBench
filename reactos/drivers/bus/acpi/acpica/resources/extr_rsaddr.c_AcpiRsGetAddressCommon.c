
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int TypeSpecific; } ;
struct TYPE_12__ {scalar_t__ ResourceType; TYPE_1__ Info; } ;
struct TYPE_13__ {TYPE_2__ Address; } ;
struct TYPE_16__ {TYPE_3__ Data; } ;
struct TYPE_14__ {int ResourceType; int SpecificFlags; } ;
struct TYPE_15__ {TYPE_4__ Address; } ;
typedef int BOOLEAN ;
typedef TYPE_5__ AML_RESOURCE ;
typedef TYPE_6__ ACPI_RESOURCE ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_IO_RANGE ;
 scalar_t__ ACPI_MEMORY_RANGE ;
 int AcpiRsConvertAmlToResource (TYPE_6__*,TYPE_5__*,int ) ;
 int AcpiRsConvertGeneralFlags ;
 int AcpiRsConvertIoFlags ;
 int AcpiRsConvertMemFlags ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiRsGetAddressCommon (
    ACPI_RESOURCE *Resource,
    AML_RESOURCE *Aml)
{
    ACPI_FUNCTION_ENTRY ();




    if ((Aml->Address.ResourceType > 2) &&
        (Aml->Address.ResourceType < 0xC0))
    {
        return (FALSE);
    }



    (void) AcpiRsConvertAmlToResource (
        Resource, Aml, AcpiRsConvertGeneralFlags);



    if (Resource->Data.Address.ResourceType == ACPI_MEMORY_RANGE)
    {
        (void) AcpiRsConvertAmlToResource (
            Resource, Aml, AcpiRsConvertMemFlags);
    }
    else if (Resource->Data.Address.ResourceType == ACPI_IO_RANGE)
    {
        (void) AcpiRsConvertAmlToResource (
            Resource, Aml, AcpiRsConvertIoFlags);
    }
    else
    {


        Resource->Data.Address.Info.TypeSpecific =
            Aml->Address.SpecificFlags;
    }

    return (TRUE);
}
