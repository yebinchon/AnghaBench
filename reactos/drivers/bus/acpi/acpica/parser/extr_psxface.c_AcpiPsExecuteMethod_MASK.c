#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_25__ {scalar_t__ ReturnObject; TYPE_18__* ObjDesc; int /*<<< orphan*/  FullPathname; int /*<<< orphan*/  PassNumber; TYPE_13__* Node; } ;
struct TYPE_24__ {int /*<<< orphan*/  ImplicitReturnObj; int /*<<< orphan*/  MethodDesc; int /*<<< orphan*/  ParserState; scalar_t__ ReturnDesc; int /*<<< orphan*/  ParseFlags; int /*<<< orphan*/  MethodIsNested; int /*<<< orphan*/  MethodPathname; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* Implementation ) (TYPE_4__*) ;} ;
struct TYPE_23__ {int InfoFlags; TYPE_2__ Dispatch; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  AmlStart; int /*<<< orphan*/  OwnerId; } ;
struct TYPE_21__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_20__ {TYPE_3__ Method; } ;
struct TYPE_19__ {TYPE_1__ Name; } ;
typedef  TYPE_4__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;
typedef  TYPE_5__ ACPI_EVALUATE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int ACPI_METHOD_INTERNAL_ONLY ; 
 int ACPI_METHOD_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_PARSE_MODULE_LEVEL ; 
 int /*<<< orphan*/  AE_CTRL_RETURN_VALUE ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_ENTRY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,TYPE_18__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ AcpiGbl_EnableInterpreterSlack ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PsExecuteMethod ; 
 int /*<<< orphan*/  REF_DECREMENT ; 
 int /*<<< orphan*/  REF_INCREMENT ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 

ACPI_STATUS
FUNC19 (
    ACPI_EVALUATE_INFO      *Info)
{
    ACPI_STATUS             Status;
    ACPI_PARSE_OBJECT       *Op;
    ACPI_WALK_STATE         *WalkState;


    FUNC3 (PsExecuteMethod);


    /* Quick validation of DSDT header */

    FUNC15 ();

    /* Validate the Info and method Node */

    if (!Info || !Info->Node)
    {
        FUNC17 (AE_NULL_ENTRY);
    }

    /* Init for new method, wait on concurrency semaphore */

    Status = FUNC4 (Info->Node, Info->ObjDesc, NULL);
    if (FUNC2 (Status))
    {
        FUNC17 (Status);
    }

    /*
     * The caller "owns" the parameters, so give each one an extra reference
     */
    FUNC14 (Info, REF_INCREMENT);

    /*
     * Execute the method. Performs parse simultaneously
     */
    FUNC0 ((ACPI_DB_PARSE,
        "**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\n",
        Info->Node->Name.Ascii, Info->Node, Info->ObjDesc));

    /* Create and init a Root Node */

    Op = FUNC11 (Info->ObjDesc->Method.AmlStart);
    if (!Op)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    /* Create and initialize a new walk state */

    Info->PassNumber = ACPI_IMODE_EXECUTE;
    WalkState = FUNC5 (
        Info->ObjDesc->Method.OwnerId, NULL, NULL, NULL);
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Status = FUNC7 (WalkState, Op, Info->Node,
        Info->ObjDesc->Method.AmlStart,
        Info->ObjDesc->Method.AmlLength, Info, Info->PassNumber);
    if (FUNC2 (Status))
    {
        FUNC6 (WalkState);
        goto Cleanup;
    }

    WalkState->MethodPathname = Info->FullPathname;
    WalkState->MethodIsNested = FALSE;

    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL)
    {
        WalkState->ParseFlags |= ACPI_PARSE_MODULE_LEVEL;
    }

    /* Invoke an internal method if necessary */

    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_INTERNAL_ONLY)
    {
        Status = Info->ObjDesc->Method.Dispatch.Implementation (WalkState);
        Info->ReturnObject = WalkState->ReturnDesc;

        /* Cleanup states */

        FUNC8 (WalkState);
        FUNC10 (&WalkState->ParserState);
        FUNC9 (WalkState->MethodDesc, WalkState);
        FUNC6 (WalkState);
        goto Cleanup;
    }

    /*
     * Start method evaluation with an implicit return of zero.
     * This is done for Windows compatibility.
     */
    if (AcpiGbl_EnableInterpreterSlack)
    {
        WalkState->ImplicitReturnObj =
            FUNC16 ((UINT64) 0);
        if (!WalkState->ImplicitReturnObj)
        {
            Status = AE_NO_MEMORY;
            FUNC6 (WalkState);
            goto Cleanup;
        }
    }

    /* Parse the AML */

    Status = FUNC13 (WalkState);

    /* WalkState was deleted by ParseAml */

Cleanup:
    FUNC12 (Op);

    /* Take away the extra reference that we gave the parameters above */

    FUNC14 (Info, REF_DECREMENT);

    /* Exit now if error above */

    if (FUNC2 (Status))
    {
        FUNC17 (Status);
    }

    /*
     * If the method has returned an object, signal this to the caller with
     * a control exception code
     */
    if (Info->ReturnObject)
    {
        FUNC0 ((ACPI_DB_PARSE, "Method returned ObjDesc=%p\n",
            Info->ReturnObject));
        FUNC1 (Info->ReturnObject);

        Status = AE_CTRL_RETURN_VALUE;
    }

    FUNC17 (Status);
}