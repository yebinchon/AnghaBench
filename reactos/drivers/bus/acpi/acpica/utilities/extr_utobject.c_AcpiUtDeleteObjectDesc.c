
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (int *) ;
 int AE_INFO ;
 int AcpiGbl_OperandCache ;
 int AcpiOsReleaseObject (int ,int *) ;
 int AcpiUtGetDescriptorName (int *) ;
 int UtDeleteObjectDesc ;
 int return_VOID ;

void
AcpiUtDeleteObjectDesc (
    ACPI_OPERAND_OBJECT *Object)
{
    ACPI_FUNCTION_TRACE_PTR (UtDeleteObjectDesc, Object);




    if (ACPI_GET_DESCRIPTOR_TYPE (Object) != ACPI_DESC_TYPE_OPERAND)
    {
        ACPI_ERROR ((AE_INFO,
            "%p is not an ACPI Operand object [%s]", Object,
            AcpiUtGetDescriptorName (Object)));
        return_VOID;
    }

    (void) AcpiOsReleaseObject (AcpiGbl_OperandCache, Object);
    return_VOID;
}
