
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_23__ {int Class; } ;
struct TYPE_20__ {scalar_t__ AmlOpcode; TYPE_5__* Parent; } ;
struct TYPE_22__ {TYPE_6__ Common; } ;
struct TYPE_21__ {TYPE_3__* ControlState; int ResultObj; } ;
struct TYPE_18__ {scalar_t__ AmlOpcode; } ;
struct TYPE_19__ {TYPE_4__ Common; } ;
struct TYPE_16__ {TYPE_8__* PredicateOp; } ;
struct TYPE_15__ {int State; } ;
struct TYPE_17__ {TYPE_2__ Control; TYPE_1__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_7__ ACPI_WALK_STATE ;
typedef TYPE_8__ ACPI_PARSE_OBJECT ;
typedef TYPE_9__ ACPI_OPCODE_INFO ;


 int ACPI_CONTROL_PREDICATE_EXECUTING ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_8__*) ;
 int AE_INFO ;
 scalar_t__ AML_BANK_FIELD_OP ;
 scalar_t__ AML_BUFFER_OP ;



 int AML_CLASS_UNKNOWN ;
 scalar_t__ AML_DATA_REGION_OP ;

 scalar_t__ AML_INT_EVAL_SUBTREE_OP ;
 scalar_t__ AML_PACKAGE_OP ;
 scalar_t__ AML_REGION_OP ;

 scalar_t__ AML_SCOPE_OP ;
 scalar_t__ AML_VARIABLE_PACKAGE_OP ;

 int AcpiDsDoImplicitReturn (int ,TYPE_7__*,int ) ;
 TYPE_9__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int AcpiPsGetOpcodeName (scalar_t__) ;
 int DsIsResultUsed ;
 int FALSE ;
 int TRUE ;
 int return_UINT8 (int ) ;

BOOLEAN
AcpiDsIsResultUsed (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    const ACPI_OPCODE_INFO *ParentInfo;

    ACPI_FUNCTION_TRACE_PTR (DsIsResultUsed, Op);




    if (!Op)
    {
        ACPI_ERROR ((AE_INFO, "Null Op"));
        return_UINT8 (TRUE);
    }
    (void) AcpiDsDoImplicitReturn (WalkState->ResultObj, WalkState, TRUE);
    if ((!Op->Common.Parent) ||
        (Op->Common.Parent->Common.AmlOpcode == AML_SCOPE_OP))
    {


        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "At Method level, result of [%s] not used\n",
            AcpiPsGetOpcodeName (Op->Common.AmlOpcode)));
        return_UINT8 (FALSE);
    }



    ParentInfo = AcpiPsGetOpcodeInfo (Op->Common.Parent->Common.AmlOpcode);
    if (ParentInfo->Class == AML_CLASS_UNKNOWN)
    {
        ACPI_ERROR ((AE_INFO,
            "Unknown parent opcode Op=%p", Op));
        return_UINT8 (FALSE);
    }







    switch (ParentInfo->Class)
    {
    case 133:

        switch (Op->Common.Parent->Common.AmlOpcode)
        {
        case 129:



            goto ResultUsed;

        case 130:
        case 128:




            if ((WalkState->ControlState->Common.State ==
                    ACPI_CONTROL_PREDICATE_EXECUTING) &&
                (WalkState->ControlState->Control.PredicateOp == Op))
            {
                goto ResultUsed;
            }
            break;

        default:



            break;
        }



        goto ResultNotUsed;

    case 132:




        goto ResultUsed;

    case 131:

        if ((Op->Common.Parent->Common.AmlOpcode == AML_REGION_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_DATA_REGION_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_PACKAGE_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_BUFFER_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_VARIABLE_PACKAGE_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_INT_EVAL_SUBTREE_OP) ||
            (Op->Common.Parent->Common.AmlOpcode == AML_BANK_FIELD_OP))
        {




            goto ResultUsed;
        }

        goto ResultNotUsed;

    default:




        goto ResultUsed;
    }


ResultUsed:
    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "Result of [%s] used by Parent [%s] Op=%p\n",
        AcpiPsGetOpcodeName (Op->Common.AmlOpcode),
        AcpiPsGetOpcodeName (Op->Common.Parent->Common.AmlOpcode), Op));

    return_UINT8 (TRUE);


ResultNotUsed:
    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "Result of [%s] not used by Parent [%s] Op=%p\n",
        AcpiPsGetOpcodeName (Op->Common.AmlOpcode),
        AcpiPsGetOpcodeName (Op->Common.Parent->Common.AmlOpcode), Op));

    return_UINT8 (FALSE);
}
