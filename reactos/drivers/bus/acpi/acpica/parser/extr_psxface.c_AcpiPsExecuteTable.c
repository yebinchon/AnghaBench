
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int Node; TYPE_2__* ObjDesc; int FullPathname; int PassNumber; } ;
struct TYPE_14__ {int ParseFlags; int MethodIsNested; int MethodPathname; } ;
struct TYPE_12__ {int InfoFlags; int AmlLength; int AmlStart; int OwnerId; } ;
struct TYPE_13__ {TYPE_1__ Method; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int ACPI_TYPE_METHOD ;
 int AE_NO_MEMORY ;
 TYPE_3__* AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsDeleteWalkState (TYPE_3__*) ;
 int AcpiDsInitAmlWalk (TYPE_3__*,int *,int ,int ,int ,TYPE_4__*,int ) ;
 int AcpiDsScopeStackPush (int ,int ,TYPE_3__*) ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 int AcpiGbl_RootNode ;
 int * AcpiPsCreateScopeOp (int ) ;
 int AcpiPsDeleteParseTree (int *) ;
 int AcpiPsParseAml (TYPE_3__*) ;
 int FALSE ;
 int PsExecuteTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiPsExecuteTable (
    ACPI_EVALUATE_INFO *Info)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Op = ((void*)0);
    ACPI_WALK_STATE *WalkState = ((void*)0);


    ACPI_FUNCTION_TRACE (PsExecuteTable);




    Op = AcpiPsCreateScopeOp (Info->ObjDesc->Method.AmlStart);
    if (!Op)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }



    WalkState = AcpiDsCreateWalkState (
        Info->ObjDesc->Method.OwnerId, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Status = AcpiDsInitAmlWalk (WalkState, Op, Info->Node,
        Info->ObjDesc->Method.AmlStart,
        Info->ObjDesc->Method.AmlLength, Info, Info->PassNumber);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }

    WalkState->MethodPathname = Info->FullPathname;
    WalkState->MethodIsNested = FALSE;

    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL)
    {
        WalkState->ParseFlags |= ACPI_PARSE_MODULE_LEVEL;
    }



    if (Info->Node && Info->Node != AcpiGbl_RootNode)
    {
        Status = AcpiDsScopeStackPush (
            Info->Node, ACPI_TYPE_METHOD, WalkState);
        if (ACPI_FAILURE (Status))
        {
            goto Cleanup;
        }
    }




    AcpiExEnterInterpreter ();
    Status = AcpiPsParseAml (WalkState);
    AcpiExExitInterpreter ();
    WalkState = ((void*)0);

Cleanup:
    if (WalkState)
    {
        AcpiDsDeleteWalkState (WalkState);
    }
    if (Op)
    {
        AcpiPsDeleteParseTree (Op);
    }
    return_ACPI_STATUS (Status);
}
