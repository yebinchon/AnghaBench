
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {size_t NumOperands; int * Operands; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_1__*) ;
 int AE_OK ;
 int AcpiExResolveToValue (int *,TYPE_1__*) ;
 int DsResolveOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsResolveOperands (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE_PTR (DsResolveOperands, WalkState);







    for (i = 0; i < WalkState->NumOperands; i++)
    {
        Status = AcpiExResolveToValue (&WalkState->Operands[i], WalkState);
        if (ACPI_FAILURE (Status))
        {
            break;
        }
    }

    return_ACPI_STATUS (Status);
}
