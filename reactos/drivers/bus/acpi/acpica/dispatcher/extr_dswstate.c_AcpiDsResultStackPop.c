
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ResultSize; int ResultCount; int * Results; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiUtDeleteGenericState (int *) ;
 int * AcpiUtPopGenericState (int **) ;
 int DsResultStackPop ;

__attribute__((used)) static ACPI_STATUS
AcpiDsResultStackPop (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_NAME (DsResultStackPop);




    if (WalkState->Results == ((void*)0))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Result stack underflow - State=%p\n", WalkState));
        return (AE_AML_NO_OPERAND);
    }

    if (WalkState->ResultSize < ACPI_RESULTS_FRAME_OBJ_NUM)
    {
        ACPI_ERROR ((AE_INFO, "Insufficient result stack size"));
        return (AE_AML_INTERNAL);
    }

    State = AcpiUtPopGenericState (&WalkState->Results);
    AcpiUtDeleteGenericState (State);



    WalkState->ResultSize -= ACPI_RESULTS_FRAME_OBJ_NUM;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Result=%p RemainingResults=%X State=%p\n",
        State, WalkState->ResultCount, WalkState));

    return (AE_OK);
}
