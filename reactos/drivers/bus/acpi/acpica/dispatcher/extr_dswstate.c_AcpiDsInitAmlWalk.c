
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_23__ {int ReturnObject; int Parameters; } ;
struct TYPE_22__ {int Type; } ;
struct TYPE_18__ {TYPE_5__* Node; TYPE_4__* Parent; } ;
struct TYPE_21__ {TYPE_1__ Common; } ;
struct TYPE_20__ {TYPE_5__* StartNode; TYPE_4__* StartOp; int * PkgEnd; int * AmlEnd; int * AmlStart; int * Aml; } ;
struct TYPE_19__ {int Params; int MethodDesc; TYPE_5__* MethodNode; int WalkType; TYPE_3__ ParserState; int * CallerReturnDesc; int PassNumber; int * NextOp; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_STATE ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;
typedef TYPE_6__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_NUM_ARGS ;
 int ACPI_TYPE_METHOD ;
 int ACPI_WALK_METHOD ;
 int AcpiDsInitCallbacks (TYPE_2__*,int ) ;
 int AcpiDsMethodDataInitArgs (int ,int ,TYPE_2__*) ;
 int AcpiDsScopeStackPush (TYPE_5__*,int ,TYPE_2__*) ;
 int AcpiNsGetAttachedObject (TYPE_5__*) ;
 int AcpiPsInitScope (TYPE_3__*,TYPE_4__*) ;
 int DsInitAmlWalk ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsInitAmlWalk (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op,
    ACPI_NAMESPACE_NODE *MethodNode,
    UINT8 *AmlStart,
    UINT32 AmlLength,
    ACPI_EVALUATE_INFO *Info,
    UINT8 PassNumber)
{
    ACPI_STATUS Status;
    ACPI_PARSE_STATE *ParserState = &WalkState->ParserState;
    ACPI_PARSE_OBJECT *ExtraOp;


    ACPI_FUNCTION_TRACE (DsInitAmlWalk);


    WalkState->ParserState.Aml =
    WalkState->ParserState.AmlStart = AmlStart;
    WalkState->ParserState.AmlEnd =
    WalkState->ParserState.PkgEnd = AmlStart + AmlLength;



    WalkState->NextOp = ((void*)0);
    WalkState->PassNumber = PassNumber;

    if (Info)
    {
        WalkState->Params = Info->Parameters;
        WalkState->CallerReturnDesc = &Info->ReturnObject;
    }

    Status = AcpiPsInitScope (&WalkState->ParserState, Op);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    if (MethodNode)
    {
        WalkState->ParserState.StartNode = MethodNode;
        WalkState->WalkType = ACPI_WALK_METHOD;
        WalkState->MethodNode = MethodNode;
        WalkState->MethodDesc = AcpiNsGetAttachedObject (MethodNode);



        Status = AcpiDsScopeStackPush (
            MethodNode, ACPI_TYPE_METHOD, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }



        Status = AcpiDsMethodDataInitArgs (WalkState->Params,
                    ACPI_METHOD_NUM_ARGS, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }
    else
    {






        ExtraOp = ParserState->StartOp;
        while (ExtraOp && !ExtraOp->Common.Node)
        {
            ExtraOp = ExtraOp->Common.Parent;
        }

        if (!ExtraOp)
        {
            ParserState->StartNode = ((void*)0);
        }
        else
        {
            ParserState->StartNode = ExtraOp->Common.Node;
        }

        if (ParserState->StartNode)
        {


            Status = AcpiDsScopeStackPush (ParserState->StartNode,
                ParserState->StartNode->Type, WalkState);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }
    }

    Status = AcpiDsInitCallbacks (WalkState, PassNumber);
    return_ACPI_STATUS (Status);
}
