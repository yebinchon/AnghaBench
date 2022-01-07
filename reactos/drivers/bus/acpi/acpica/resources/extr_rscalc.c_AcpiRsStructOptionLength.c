
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ StringLength; scalar_t__ StringPtr; } ;
typedef int ACPI_RS_LENGTH ;
typedef TYPE_1__ ACPI_RESOURCE_SOURCE ;


 int ACPI_FUNCTION_ENTRY () ;

__attribute__((used)) static ACPI_RS_LENGTH
AcpiRsStructOptionLength (
    ACPI_RESOURCE_SOURCE *ResourceSource)
{
    ACPI_FUNCTION_ENTRY ();







    if (ResourceSource->StringPtr)
    {
        return ((ACPI_RS_LENGTH) (ResourceSource->StringLength + 1));
    }

    return (0);
}
