
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Type; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_2__*) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AcpiUtGetPackageObjectSize (TYPE_2__*,int *) ;
 int AcpiUtGetSimpleObjectSize (TYPE_2__*,int *) ;

ACPI_STATUS
AcpiUtGetObjectSize (
    ACPI_OPERAND_OBJECT *InternalObject,
    ACPI_SIZE *ObjLength)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_ENTRY ();


    if ((ACPI_GET_DESCRIPTOR_TYPE (InternalObject) ==
            ACPI_DESC_TYPE_OPERAND) &&
        (InternalObject->Common.Type == ACPI_TYPE_PACKAGE))
    {
        Status = AcpiUtGetPackageObjectSize (InternalObject, ObjLength);
    }
    else
    {
        Status = AcpiUtGetSimpleObjectSize (InternalObject, ObjLength);
    }

    return (Status);
}
