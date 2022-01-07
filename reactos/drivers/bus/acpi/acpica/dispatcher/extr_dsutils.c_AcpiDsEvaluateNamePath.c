
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_23__ {scalar_t__ Type; } ;
struct TYPE_27__ {TYPE_3__ Common; } ;
struct TYPE_24__ {int Flags; TYPE_2__* Parent; } ;
struct TYPE_26__ {TYPE_4__ Common; } ;
struct TYPE_25__ {TYPE_7__* ResultObj; TYPE_7__** Operands; TYPE_6__* Op; } ;
struct TYPE_21__ {scalar_t__ AmlOpcode; } ;
struct TYPE_22__ {TYPE_1__ Common; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;
typedef TYPE_7__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;
 int ACPI_PARSEOP_IN_STACK ;
 int ACPI_PARSEOP_TARGET ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AE_OK ;
 scalar_t__ AML_PACKAGE_OP ;
 scalar_t__ AML_REF_OF_OP ;
 scalar_t__ AML_VARIABLE_PACKAGE_OP ;
 int AcpiDsCreateOperand (TYPE_5__*,TYPE_6__*,int ) ;
 int AcpiDsObjStackPop (int,TYPE_5__*) ;
 int AcpiDsResultPush (TYPE_7__*,TYPE_5__*) ;
 int AcpiExResolveToValue (TYPE_7__**,TYPE_5__*) ;
 int AcpiUtCopyIobjectToIobject (TYPE_7__*,TYPE_7__**,TYPE_5__*) ;
 int AcpiUtRemoveReference (TYPE_7__*) ;
 int DsEvaluateNamePath ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsEvaluateNamePath (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PARSE_OBJECT *Op = WalkState->Op;
    ACPI_OPERAND_OBJECT **Operand = &WalkState->Operands[0];
    ACPI_OPERAND_OBJECT *NewObjDesc;
    UINT8 Type;


    ACPI_FUNCTION_TRACE_PTR (DsEvaluateNamePath, WalkState);


    if (!Op->Common.Parent)
    {


        goto Exit;
    }

    if ((Op->Common.Parent->Common.AmlOpcode == AML_PACKAGE_OP) ||
        (Op->Common.Parent->Common.AmlOpcode == AML_VARIABLE_PACKAGE_OP) ||
        (Op->Common.Parent->Common.AmlOpcode == AML_REF_OF_OP))
    {


        goto Exit;
    }

    Status = AcpiDsCreateOperand (WalkState, Op, 0);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }

    if (Op->Common.Flags & ACPI_PARSEOP_TARGET)
    {
        NewObjDesc = *Operand;
        goto PushResult;
    }

    Type = (*Operand)->Common.Type;

    Status = AcpiExResolveToValue (Operand, WalkState);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }

    if (Type == ACPI_TYPE_INTEGER)
    {


        AcpiUtRemoveReference (*Operand);

        Status = AcpiUtCopyIobjectToIobject (
            *Operand, &NewObjDesc, WalkState);
        if (ACPI_FAILURE (Status))
        {
            goto Exit;
        }
    }
    else
    {




        NewObjDesc = *Operand;
    }



    Status = AcpiDsObjStackPop (1, WalkState);
    if (ACPI_FAILURE (Status))
    {
        WalkState->ResultObj = NewObjDesc;
        goto Exit;
    }

PushResult:

    WalkState->ResultObj = NewObjDesc;

    Status = AcpiDsResultPush (WalkState->ResultObj, WalkState);
    if (ACPI_SUCCESS (Status))
    {


        Op->Common.Flags |= ACPI_PARSEOP_IN_STACK;
    }

Exit:

    return_ACPI_STATUS (Status);
}
