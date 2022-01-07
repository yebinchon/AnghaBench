
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_33__ {int ** Parameters; } ;
struct TYPE_27__ {int Ascii; } ;
struct TYPE_32__ {TYPE_1__ Name; } ;
struct TYPE_28__ {scalar_t__ (* Implementation ) (TYPE_4__*) ;} ;
struct TYPE_29__ {size_t ParamCount; int InfoFlags; TYPE_2__ Dispatch; int AmlLength; int AmlStart; int OwnerId; } ;
struct TYPE_31__ {TYPE_3__ Method; } ;
struct TYPE_30__ {size_t NumOperands; int MethodNestingDepth; int * MethodPathname; int MethodIsNested; int ** Operands; TYPE_6__* MethodCallNode; int PrevOp; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_THREAD_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;
typedef TYPE_7__ ACPI_EVALUATE_INFO ;


 TYPE_7__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EVALUATION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FREE (TYPE_7__*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_METHOD_INTERNAL_ONLY ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_NULL_ENTRY ;
 scalar_t__ AE_NULL_OBJECT ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiDsBeginMethodExecution (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* AcpiDsCreateWalkState (int ,int *,TYPE_5__*,int *) ;
 int AcpiDsDeleteWalkState (TYPE_4__*) ;
 scalar_t__ AcpiDsInitAmlWalk (TYPE_4__*,int *,TYPE_6__*,int ,int ,TYPE_7__*,int ) ;
 int AcpiDsTerminateControlMethod (TYPE_5__*,TYPE_4__*) ;
 TYPE_5__* AcpiNsGetAttachedObject (TYPE_6__*) ;
 int * AcpiNsGetNormalizedPathname (TYPE_6__*,int ) ;
 int AcpiUtRemoveReference (int *) ;
 int DsCallControlMethod ;
 int TRUE ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (TYPE_4__*) ;

ACPI_STATUS
AcpiDsCallControlMethod (
    ACPI_THREAD_STATE *Thread,
    ACPI_WALK_STATE *ThisWalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *MethodNode;
    ACPI_WALK_STATE *NextWalkState = ((void*)0);
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_EVALUATE_INFO *Info;
    UINT32 i;


    ACPI_FUNCTION_TRACE_PTR (DsCallControlMethod, ThisWalkState);

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "Calling method %p, currentstate=%p\n",
        ThisWalkState->PrevOp, ThisWalkState));




    MethodNode = ThisWalkState->MethodCallNode;
    if (!MethodNode)
    {
        return_ACPI_STATUS (AE_NULL_ENTRY);
    }

    ObjDesc = AcpiNsGetAttachedObject (MethodNode);
    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_NULL_OBJECT);
    }



    Status = AcpiDsBeginMethodExecution (
        MethodNode, ObjDesc, ThisWalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    NextWalkState = AcpiDsCreateWalkState (
        ObjDesc->Method.OwnerId, ((void*)0), ObjDesc, Thread);
    if (!NextWalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }






    ThisWalkState->Operands [ThisWalkState->NumOperands] = ((void*)0);






    Info = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_EVALUATE_INFO));
    if (!Info)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Info->Parameters = &ThisWalkState->Operands[0];

    Status = AcpiDsInitAmlWalk (NextWalkState, ((void*)0), MethodNode,
        ObjDesc->Method.AmlStart, ObjDesc->Method.AmlLength,
        Info, ACPI_IMODE_EXECUTE);

    ACPI_FREE (Info);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }

    NextWalkState->MethodNestingDepth = ThisWalkState->MethodNestingDepth + 1;





    for (i = 0; i < ObjDesc->Method.ParamCount; i++)
    {
        AcpiUtRemoveReference (ThisWalkState->Operands [i]);
        ThisWalkState->Operands [i] = ((void*)0);
    }



    ThisWalkState->NumOperands = 0;

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "**** Begin nested execution of [%4.4s] **** WalkState=%p\n",
        MethodNode->Name.Ascii, NextWalkState));

    ThisWalkState->MethodPathname = AcpiNsGetNormalizedPathname (MethodNode, TRUE);
    ThisWalkState->MethodIsNested = TRUE;



    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EVALUATION,
        "%-26s:  %*s%s\n", "   Nested method call",
        NextWalkState->MethodNestingDepth * 3, " ",
        &ThisWalkState->MethodPathname[1]));



    if (ObjDesc->Method.InfoFlags & ACPI_METHOD_INTERNAL_ONLY)
    {
        Status = ObjDesc->Method.Dispatch.Implementation (NextWalkState);
        if (Status == AE_OK)
        {
            Status = AE_CTRL_TERMINATE;
        }
    }

    return_ACPI_STATUS (Status);


Cleanup:



    AcpiDsTerminateControlMethod (ObjDesc, NextWalkState);
    AcpiDsDeleteWalkState (NextWalkState);

    return_ACPI_STATUS (Status);
}
