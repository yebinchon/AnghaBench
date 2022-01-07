
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_11__ {int * Node; } ;
struct TYPE_13__ {TYPE_1__ Common; } ;
struct TYPE_12__ {int * DeferredNode; int ParseFlags; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_PARSE_DEFERRED_OP ;
 int AE_NO_MEMORY ;
 int AML_INT_EVAL_SUBTREE_OP ;
 TYPE_2__* AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsDeleteWalkState (TYPE_2__*) ;
 int AcpiDsInitAmlWalk (TYPE_2__*,TYPE_3__*,int *,int *,int ,int *,int ) ;
 TYPE_3__* AcpiPsAllocOp (int ,int *) ;
 int AcpiPsDeleteParseTree (TYPE_3__*) ;
 int AcpiPsParseAml (TYPE_2__*) ;
 int DsExecuteArguments ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDsExecuteArguments (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_NAMESPACE_NODE *ScopeNode,
    UINT32 AmlLength,
    UINT8 *AmlStart)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Op;
    ACPI_WALK_STATE *WalkState;


    ACPI_FUNCTION_TRACE_PTR (DsExecuteArguments, AmlStart);




    Op = AcpiPsAllocOp (AML_INT_EVAL_SUBTREE_OP, AmlStart);
    if (!Op)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    Op->Common.Node = ScopeNode;



    WalkState = AcpiDsCreateWalkState (0, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Status = AcpiDsInitAmlWalk (WalkState, Op, ((void*)0), AmlStart,
        AmlLength, ((void*)0), ACPI_IMODE_LOAD_PASS1);
    if (ACPI_FAILURE (Status))
    {
        AcpiDsDeleteWalkState (WalkState);
        goto Cleanup;
    }



    WalkState->ParseFlags = ACPI_PARSE_DEFERRED_OP;
    WalkState->DeferredNode = Node;



    Status = AcpiPsParseAml (WalkState);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }



    Op->Common.Node = Node;
    AcpiPsDeleteParseTree (Op);



    Op = AcpiPsAllocOp (AML_INT_EVAL_SUBTREE_OP, AmlStart);
    if (!Op)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    Op->Common.Node = ScopeNode;



    WalkState = AcpiDsCreateWalkState (0, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }



    Status = AcpiDsInitAmlWalk (WalkState, Op, ((void*)0), AmlStart,
        AmlLength, ((void*)0), ACPI_IMODE_EXECUTE);
    if (ACPI_FAILURE (Status))
    {
        AcpiDsDeleteWalkState (WalkState);
        goto Cleanup;
    }



    WalkState->DeferredNode = Node;
    Status = AcpiPsParseAml (WalkState);

Cleanup:
    AcpiPsDeleteParseTree (Op);
    return_ACPI_STATUS (Status);
}
