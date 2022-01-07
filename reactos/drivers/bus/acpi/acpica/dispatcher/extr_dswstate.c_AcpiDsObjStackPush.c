
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ NumOperands; size_t OperandIndex; void** Operands; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_OBJ_NUM_OPERANDS ;
 int AE_INFO ;
 int AE_OK ;
 int AE_STACK_OVERFLOW ;
 int AcpiUtGetObjectTypeName (int *) ;
 int DsObjStackPush ;

ACPI_STATUS
AcpiDsObjStackPush (
    void *Object,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_FUNCTION_NAME (DsObjStackPush);




    if (WalkState->NumOperands >= ACPI_OBJ_NUM_OPERANDS)
    {
        ACPI_ERROR ((AE_INFO,
            "Object stack overflow! Obj=%p State=%p #Ops=%u",
            Object, WalkState, WalkState->NumOperands));
        return (AE_STACK_OVERFLOW);
    }



    WalkState->Operands [WalkState->OperandIndex] = Object;
    WalkState->NumOperands++;



    WalkState->OperandIndex++;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Obj=%p [%s] State=%p #Ops=%X\n",
        Object, AcpiUtGetObjectTypeName ((ACPI_OPERAND_OBJECT *) Object),
        WalkState, WalkState->NumOperands));

    return (AE_OK);
}
