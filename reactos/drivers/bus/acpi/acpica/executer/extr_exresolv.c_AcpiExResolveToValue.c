
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_CAST_INDIRECT_PTR (int ,int **) ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int **) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (int *) ;
 int ACPI_NAMESPACE_NODE ;
 int AE_AML_NO_OPERAND ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiExResolveNodeToValue (int ,int *) ;
 int AcpiExResolveObjectToValue (int **,int *) ;
 int ExResolveToValue ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExResolveToValue (
    ACPI_OPERAND_OBJECT **StackPtr,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (ExResolveToValue, StackPtr);


    if (!StackPtr || !*StackPtr)
    {
        ACPI_ERROR ((AE_INFO, "Internal - null pointer"));
        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }






    if (ACPI_GET_DESCRIPTOR_TYPE (*StackPtr) == ACPI_DESC_TYPE_OPERAND)
    {
        Status = AcpiExResolveObjectToValue (StackPtr, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        if (!*StackPtr)
        {
            ACPI_ERROR ((AE_INFO, "Internal - null pointer"));
            return_ACPI_STATUS (AE_AML_NO_OPERAND);
        }
    }





    if (ACPI_GET_DESCRIPTOR_TYPE (*StackPtr) == ACPI_DESC_TYPE_NAMED)
    {
        Status = AcpiExResolveNodeToValue (
            ACPI_CAST_INDIRECT_PTR (ACPI_NAMESPACE_NODE, StackPtr),
            WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Resolved object %p\n", *StackPtr));
    return_ACPI_STATUS (AE_OK);
}
