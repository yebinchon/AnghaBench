
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* Arg; } ;
struct TYPE_12__ {scalar_t__ AmlOpcode; TYPE_1__ Value; int * Node; } ;
struct TYPE_14__ {TYPE_2__ Common; } ;
struct TYPE_13__ {int ** Operands; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int ACPI_WALK_OPERANDS ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 scalar_t__ AML_CREATE_FIELD_OP ;
 int AcpiDsCreateOperands (TYPE_3__*,TYPE_4__*) ;
 int AcpiDsInitBufferField (scalar_t__,int *,int *,int *,int *,int *) ;
 int AcpiExResolveOperands (scalar_t__,int ,TYPE_3__*) ;
 int * AcpiNsGetAttachedObject (int *) ;
 int AcpiPsGetOpcodeName (scalar_t__) ;
 int DsEvalBufferFieldOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsEvalBufferFieldOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *NextOp;


    ACPI_FUNCTION_TRACE_PTR (DsEvalBufferFieldOperands, Op);






    Node = Op->Common.Node;



    NextOp = Op->Common.Value.Arg;



    Status = AcpiDsCreateOperands (WalkState, NextOp);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }



    Status = AcpiExResolveOperands (
        Op->Common.AmlOpcode, ACPI_WALK_OPERANDS, WalkState);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR ((AE_INFO, "(%s) bad operand(s), status 0x%X",
            AcpiPsGetOpcodeName (Op->Common.AmlOpcode), Status));

        return_ACPI_STATUS (Status);
    }



    if (Op->Common.AmlOpcode == AML_CREATE_FIELD_OP)
    {


        Status = AcpiDsInitBufferField (Op->Common.AmlOpcode, ObjDesc,
            WalkState->Operands[0], WalkState->Operands[1],
            WalkState->Operands[2], WalkState->Operands[3]);
    }
    else
    {


        Status = AcpiDsInitBufferField (Op->Common.AmlOpcode, ObjDesc,
            WalkState->Operands[0], WalkState->Operands[1],
            ((void*)0), WalkState->Operands[2]);
    }

    return_ACPI_STATUS (Status);
}
