
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_24__ {int * Node; } ;
struct TYPE_22__ {int AmlLength; int AmlStart; } ;
struct TYPE_21__ {TYPE_9__* NextObject; } ;
struct TYPE_27__ {TYPE_6__ BufferField; TYPE_4__ Extra; TYPE_3__ Common; } ;
struct TYPE_23__ {int Length; int Data; } ;
struct TYPE_19__ {int String; } ;
struct TYPE_20__ {scalar_t__ AmlOpcode; int * Node; TYPE_1__ Value; } ;
struct TYPE_26__ {TYPE_5__ Named; TYPE_2__ Common; } ;
struct TYPE_25__ {int ParseFlags; int ScopeInfo; scalar_t__ MethodNode; int * DeferredNode; } ;
typedef TYPE_7__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_8__ ACPI_PARSE_OBJECT ;
typedef TYPE_9__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_TEMPORARY ;
 int ACPI_PARSE_EXECUTE ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_BUFFER_FIELD ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ AML_CREATE_FIELD_OP ;
 int AcpiNsAttachObject (int *,TYPE_9__*,int ) ;
 TYPE_9__* AcpiNsGetAttachedObject (int *) ;
 int AcpiNsLookup (int ,int ,int ,int ,int,TYPE_7__*,int **) ;
 TYPE_8__* AcpiPsGetArg (TYPE_8__*,int) ;
 TYPE_9__* AcpiUtCreateInternalObject (int ) ;
 int AcpiUtRemoveReference (TYPE_9__*) ;
 int DsCreateBufferField ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsCreateBufferField (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_PARSE_OBJECT *Arg;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *SecondDesc = ((void*)0);
    UINT32 Flags;


    ACPI_FUNCTION_TRACE (DsCreateBufferField);





    if (Op->Common.AmlOpcode == AML_CREATE_FIELD_OP)
    {


        Arg = AcpiPsGetArg (Op, 3);
    }
    else
    {


        Arg = AcpiPsGetArg (Op, 2);
    }

    if (!Arg)
    {
        return_ACPI_STATUS (AE_AML_NO_OPERAND);
    }

    if (WalkState->DeferredNode)
    {
        Node = WalkState->DeferredNode;
    }
    else
    {


        if (!(WalkState->ParseFlags & ACPI_PARSE_EXECUTE))
        {
            ACPI_ERROR ((AE_INFO,
                "Parse execute mode is not set"));
            return_ACPI_STATUS (AE_AML_INTERNAL);
        }



        Flags = ACPI_NS_NO_UPSEARCH | ACPI_NS_DONT_OPEN_SCOPE |
            ACPI_NS_ERROR_IF_FOUND;





        if (WalkState->MethodNode &&
            !(WalkState->ParseFlags & ACPI_PARSE_MODULE_LEVEL))
        {
            Flags |= ACPI_NS_TEMPORARY;
        }



        Status = AcpiNsLookup (WalkState->ScopeInfo,
            Arg->Common.Value.String, ACPI_TYPE_ANY,
            ACPI_IMODE_LOAD_PASS1, Flags, WalkState, &Node);
        if (ACPI_FAILURE (Status))
        {
            ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo,
                Arg->Common.Value.String, Status);
            return_ACPI_STATUS (Status);
        }
    }






    Op->Common.Node = Node;






    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (ObjDesc)
    {
        return_ACPI_STATUS (AE_OK);
    }
    ObjDesc = AcpiUtCreateInternalObject (ACPI_TYPE_BUFFER_FIELD);
    if (!ObjDesc)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }





    SecondDesc = ObjDesc->Common.NextObject;
    SecondDesc->Extra.AmlStart = Op->Named.Data;
    SecondDesc->Extra.AmlLength = Op->Named.Length;
    ObjDesc->BufferField.Node = Node;



    Status = AcpiNsAttachObject (Node, ObjDesc, ACPI_TYPE_BUFFER_FIELD);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }


Cleanup:



    AcpiUtRemoveReference (ObjDesc);
    return_ACPI_STATUS (Status);
}
