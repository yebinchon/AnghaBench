
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {size_t NumOperands; int ** Operands; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;


 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_1__*) ;
 int AcpiUtRemoveReference (int *) ;
 int DsClearOperands ;
 int return_VOID ;

void
AcpiDsClearOperands (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;


    ACPI_FUNCTION_TRACE_PTR (DsClearOperands, WalkState);




    for (i = 0; i < WalkState->NumOperands; i++)
    {




        AcpiUtRemoveReference (WalkState->Operands[i]);
        WalkState->Operands[i] = ((void*)0);
    }

    WalkState->NumOperands = 0;
    return_VOID;
}
