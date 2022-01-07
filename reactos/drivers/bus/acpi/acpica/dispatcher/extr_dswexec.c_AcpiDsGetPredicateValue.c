
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ Value; } ;
struct TYPE_23__ {scalar_t__ Type; } ;
struct TYPE_28__ {TYPE_2__ Integer; TYPE_1__ Common; } ;
struct TYPE_27__ {TYPE_4__* ControlState; int Op; TYPE_6__** Operands; } ;
struct TYPE_25__ {scalar_t__ State; int Value; } ;
struct TYPE_26__ {TYPE_3__ Common; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_CONTROL_NORMAL ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;
 int ACPI_IMPLICIT_CONVERSION ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_CTRL_FALSE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiDbDisplayResultObject (TYPE_6__*,TYPE_5__*) ;
 int AcpiDsCreateOperand (TYPE_5__*,int ,int ) ;
 int AcpiDsDoImplicitReturn (TYPE_6__*,TYPE_5__*,int ) ;
 int AcpiDsResultPop (TYPE_6__**,TYPE_5__*) ;
 int AcpiExConvertToInteger (TYPE_6__*,TYPE_6__**,int ) ;
 int AcpiExResolveToValue (TYPE_6__**,TYPE_5__*) ;
 int AcpiExTruncateFor32bitTable (TYPE_6__*) ;
 int AcpiUtRemoveReference (TYPE_6__*) ;
 int DsGetPredicateValue ;
 int FALSE ;
 int TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsGetPredicateValue (
    ACPI_WALK_STATE *WalkState,
    ACPI_OPERAND_OBJECT *ResultObj)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *LocalObjDesc = ((void*)0);


    ACPI_FUNCTION_TRACE_PTR (DsGetPredicateValue, WalkState);


    WalkState->ControlState->Common.State = 0;

    if (ResultObj)
    {
        Status = AcpiDsResultPop (&ObjDesc, WalkState);
        if (ACPI_FAILURE (Status))
        {
            ACPI_EXCEPTION ((AE_INFO, Status,
                "Could not get result from predicate evaluation"));

            return_ACPI_STATUS (Status);
        }
    }
    else
    {
        Status = AcpiDsCreateOperand (WalkState, WalkState->Op, 0);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        Status = AcpiExResolveToValue (&WalkState->Operands [0], WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        ObjDesc = WalkState->Operands [0];
    }

    if (!ObjDesc)
    {
        ACPI_ERROR ((AE_INFO,
            "No predicate ObjDesc=%p State=%p",
            ObjDesc, WalkState));

        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }





    Status = AcpiExConvertToInteger (ObjDesc, &LocalObjDesc,
        ACPI_IMPLICIT_CONVERSION);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }

    if (LocalObjDesc->Common.Type != ACPI_TYPE_INTEGER)
    {
        ACPI_ERROR ((AE_INFO,
            "Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X",
            ObjDesc, WalkState, ObjDesc->Common.Type));

        Status = AE_AML_OPERAND_TYPE;
        goto Cleanup;
    }



    (void) AcpiExTruncateFor32bitTable (LocalObjDesc);





    if (LocalObjDesc->Integer.Value)
    {
        WalkState->ControlState->Common.Value = TRUE;
    }
    else
    {




        WalkState->ControlState->Common.Value = FALSE;
        Status = AE_CTRL_FALSE;
    }



    (void) AcpiDsDoImplicitReturn (LocalObjDesc, WalkState, TRUE);


Cleanup:

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Completed a predicate eval=%X Op=%p\n",
        WalkState->ControlState->Common.Value, WalkState->Op));



    AcpiDbDisplayResultObject (LocalObjDesc, WalkState);





    if (LocalObjDesc != ObjDesc)
    {
        AcpiUtRemoveReference (LocalObjDesc);
    }
    AcpiUtRemoveReference (ObjDesc);

    WalkState->ControlState->Common.State = ACPI_CONTROL_NORMAL;
    return_ACPI_STATUS (Status);
}
