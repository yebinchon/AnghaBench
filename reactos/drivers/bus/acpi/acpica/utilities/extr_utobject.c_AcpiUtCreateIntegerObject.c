
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_6__ {int Value; } ;
struct TYPE_7__ {TYPE_1__ Integer; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_INTEGER ;
 TYPE_2__* AcpiUtCreateInternalObject (int ) ;
 int UtCreateIntegerObject ;
 int return_PTR (TYPE_2__*) ;

ACPI_OPERAND_OBJECT *
AcpiUtCreateIntegerObject (
    UINT64 InitialValue)
{
    ACPI_OPERAND_OBJECT *IntegerDesc;


    ACPI_FUNCTION_TRACE (UtCreateIntegerObject);




    IntegerDesc = AcpiUtCreateInternalObject (ACPI_TYPE_INTEGER);
    if (!IntegerDesc)
    {
        return_PTR (((void*)0));
    }

    IntegerDesc->Integer.Value = InitialValue;
    return_PTR (IntegerDesc);
}
