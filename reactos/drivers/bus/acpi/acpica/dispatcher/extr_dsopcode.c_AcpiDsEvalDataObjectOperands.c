
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_24__ {scalar_t__ Value; } ;
struct TYPE_30__ {TYPE_2__ Integer; } ;
struct TYPE_23__ {int Arg; } ;
struct TYPE_27__ {int AmlOpcode; TYPE_4__* Parent; TYPE_1__ Value; } ;
struct TYPE_29__ {TYPE_5__ Common; } ;
struct TYPE_28__ {int OperandIndex; int NumOperands; TYPE_8__* ResultObj; TYPE_8__** Operands; int Opcode; } ;
struct TYPE_25__ {int const AmlOpcode; } ;
struct TYPE_26__ {TYPE_3__ Common; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_AML_BAD_OPCODE ;
 int AE_INFO ;
 int AE_OK ;

 scalar_t__ AML_NAME_OP ;


 int AcpiDsBuildInternalBufferObj (TYPE_6__*,TYPE_7__*,scalar_t__,TYPE_8__**) ;
 int AcpiDsBuildInternalPackageObj (TYPE_6__*,TYPE_7__*,scalar_t__,TYPE_8__**) ;
 int AcpiDsCreateOperand (TYPE_6__*,int ,int) ;
 int AcpiDsObjStackPop (int,TYPE_6__*) ;
 int AcpiExResolveOperands (int ,TYPE_8__**,TYPE_6__*) ;
 int AcpiUtRemoveReference (TYPE_8__*) ;
 int DsEvalDataObjectOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsEvalDataObjectOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op,
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ArgDesc;
    UINT32 Length;


    ACPI_FUNCTION_TRACE (DsEvalDataObjectOperands);
    WalkState->OperandIndex = WalkState->NumOperands;



    if (!Op->Common.Value.Arg)
    {
        ACPI_ERROR ((AE_INFO,
            "Missing child while evaluating opcode %4.4X, Op %p",
            Op->Common.AmlOpcode, Op));
        return_ACPI_STATUS (AE_OK);
    }

    Status = AcpiDsCreateOperand (WalkState, Op->Common.Value.Arg, 1);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiExResolveOperands (WalkState->Opcode,
        &(WalkState->Operands [WalkState->NumOperands -1]),
        WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    ArgDesc = WalkState->Operands [WalkState->NumOperands - 1];
    Length = (UINT32) ArgDesc->Integer.Value;



    Status = AcpiDsObjStackPop (1, WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    AcpiUtRemoveReference (ArgDesc);




    switch (Op->Common.AmlOpcode)
    {
    case 130:

        Status = AcpiDsBuildInternalBufferObj (
            WalkState, Op, Length, &ObjDesc);
        break;

    case 129:
    case 128:

        Status = AcpiDsBuildInternalPackageObj (
            WalkState, Op, Length, &ObjDesc);
        break;

    default:

        return_ACPI_STATUS (AE_AML_BAD_OPCODE);
    }

    if (ACPI_SUCCESS (Status))
    {





        if ((!Op->Common.Parent) ||
            ((Op->Common.Parent->Common.AmlOpcode != 129) &&
             (Op->Common.Parent->Common.AmlOpcode != 128) &&
             (Op->Common.Parent->Common.AmlOpcode != AML_NAME_OP)))
        {
            WalkState->ResultObj = ObjDesc;
        }
    }

    return_ACPI_STATUS (Status);
}
