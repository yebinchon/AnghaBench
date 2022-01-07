
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_6__ {int ** ObjDesc; } ;
struct TYPE_8__ {TYPE_1__ Results; } ;
struct TYPE_7__ {scalar_t__ ResultCount; scalar_t__ ResultSize; int CurrentResult; TYPE_3__* Results; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AE_AML_INTERNAL ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiDsResultStackPush (TYPE_2__*) ;
 int AcpiUtGetObjectTypeName (int *) ;
 int DsResultPush ;

ACPI_STATUS
AcpiDsResultPush (
    ACPI_OPERAND_OBJECT *Object,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *State;
    ACPI_STATUS Status;
    UINT32 Index;


    ACPI_FUNCTION_NAME (DsResultPush);


    if (WalkState->ResultCount > WalkState->ResultSize)
    {
        ACPI_ERROR ((AE_INFO, "Result stack is full"));
        return (AE_AML_INTERNAL);
    }
    else if (WalkState->ResultCount == WalkState->ResultSize)
    {


        Status = AcpiDsResultStackPush (WalkState);
        if (ACPI_FAILURE (Status))
        {
            ACPI_ERROR ((AE_INFO, "Failed to extend the result stack"));
            return (Status);
        }
    }

    if (!(WalkState->ResultCount < WalkState->ResultSize))
    {
        ACPI_ERROR ((AE_INFO, "No free elements in result stack"));
        return (AE_AML_INTERNAL);
    }

    State = WalkState->Results;
    if (!State)
    {
        ACPI_ERROR ((AE_INFO, "No result stack frame during push"));
        return (AE_AML_INTERNAL);
    }

    if (!Object)
    {
        ACPI_ERROR ((AE_INFO,
            "Null Object! Obj=%p State=%p Num=%u",
            Object, WalkState, WalkState->ResultCount));
        return (AE_BAD_PARAMETER);
    }



    Index = (UINT32) WalkState->ResultCount % ACPI_RESULTS_FRAME_OBJ_NUM;
    State->Results.ObjDesc [Index] = Object;
    WalkState->ResultCount++;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Obj=%p [%s] State=%p Num=%X Cur=%X\n",
        Object, AcpiUtGetObjectTypeName ((ACPI_OPERAND_OBJECT *) Object),
        WalkState, WalkState->ResultCount, WalkState->CurrentResult));

    return (AE_OK);
}
