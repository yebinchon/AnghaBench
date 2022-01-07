
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Type; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_2__*) ;
 int AcpiUtGetDescriptorName (TYPE_2__*) ;
 char* AcpiUtGetTypeName (int ) ;
 int UtGetObjectTypeName ;
 int return_STR (char*) ;

const char *
AcpiUtGetObjectTypeName (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_FUNCTION_TRACE (UtGetObjectTypeName);


    if (!ObjDesc)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Null Object Descriptor\n"));
        return_STR ("[NULL Object Descriptor]");
    }



    if ((ACPI_GET_DESCRIPTOR_TYPE (ObjDesc) != ACPI_DESC_TYPE_OPERAND) &&
        (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc) != ACPI_DESC_TYPE_NAMED))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Invalid object descriptor type: 0x%2.2X [%s] (%p)\n",
            ACPI_GET_DESCRIPTOR_TYPE (ObjDesc),
            AcpiUtGetDescriptorName (ObjDesc), ObjDesc));

        return_STR ("Invalid object");
    }

    return_STR (AcpiUtGetTypeName (ObjDesc->Common.Type));
}
