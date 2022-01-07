
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t Class; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_8__ {TYPE_2__ Reference; TYPE_1__ Common; } ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 size_t ACPI_REFCLASS_MAX ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 char const** AcpiGbl_RefClassNames ;

const char *
AcpiUtGetReferenceName (
    ACPI_OPERAND_OBJECT *Object)
{

    if (!Object)
    {
        return ("NULL Object");
    }

    if (ACPI_GET_DESCRIPTOR_TYPE (Object) != ACPI_DESC_TYPE_OPERAND)
    {
        return ("Not an Operand object");
    }

    if (Object->Common.Type != ACPI_TYPE_LOCAL_REFERENCE)
    {
        return ("Not a Reference object");
    }

    if (Object->Reference.Class > ACPI_REFCLASS_MAX)
    {
        return ("Unknown Reference class");
    }

    return (AcpiGbl_RefClassNames[Object->Reference.Class]);
}
