#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ Value; } ;
struct TYPE_23__ {scalar_t__ Type; } ;
struct TYPE_28__ {TYPE_2__ Integer; TYPE_1__ Common; } ;
struct TYPE_27__ {TYPE_4__* ControlState; int /*<<< orphan*/  Op; TYPE_6__** Operands; } ;
struct TYPE_25__ {scalar_t__ State; int /*<<< orphan*/  Value; } ;
struct TYPE_26__ {TYPE_3__ Common; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_6__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ ACPI_CONTROL_NORMAL ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERSION ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_CTRL_FALSE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__**,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  DsGetPredicateValue ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC14 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_OPERAND_OBJECT     *ResultObj)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     *LocalObjDesc = NULL;


    FUNC4 (DsGetPredicateValue, WalkState);


    WalkState->ControlState->Common.State = 0;

    if (ResultObj)
    {
        Status = FUNC8 (&ObjDesc, WalkState);
        if (FUNC3 (Status))
        {
            FUNC2 ((AE_INFO, Status,
                "Could not get result from predicate evaluation"));

            FUNC13 (Status);
        }
    }
    else
    {
        Status = FUNC6 (WalkState, WalkState->Op, 0);
        if (FUNC3 (Status))
        {
            FUNC13 (Status);
        }

        Status = FUNC10 (&WalkState->Operands [0], WalkState);
        if (FUNC3 (Status))
        {
            FUNC13 (Status);
        }

        ObjDesc = WalkState->Operands [0];
    }

    if (!ObjDesc)
    {
        FUNC1 ((AE_INFO,
            "No predicate ObjDesc=%p State=%p",
            ObjDesc, WalkState));

        FUNC13 (AE_AML_NO_OPERAND);
    }

    /*
     * Result of predicate evaluation must be an Integer
     * object. Implicitly convert the argument if necessary.
     */
    Status = FUNC9 (ObjDesc, &LocalObjDesc,
        ACPI_IMPLICIT_CONVERSION);
    if (FUNC3 (Status))
    {
        goto Cleanup;
    }

    if (LocalObjDesc->Common.Type != ACPI_TYPE_INTEGER)
    {
        FUNC1 ((AE_INFO,
            "Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X",
            ObjDesc, WalkState, ObjDesc->Common.Type));

        Status = AE_AML_OPERAND_TYPE;
        goto Cleanup;
    }

    /* Truncate the predicate to 32-bits if necessary */

    (void) FUNC11 (LocalObjDesc);

    /*
     * Save the result of the predicate evaluation on
     * the control stack
     */
    if (LocalObjDesc->Integer.Value)
    {
        WalkState->ControlState->Common.Value = TRUE;
    }
    else
    {
        /*
         * Predicate is FALSE, we will just toss the
         * rest of the package
         */
        WalkState->ControlState->Common.Value = FALSE;
        Status = AE_CTRL_FALSE;
    }

    /* Predicate can be used for an implicit return value */

    (void) FUNC7 (LocalObjDesc, WalkState, TRUE);


Cleanup:

    FUNC0 ((ACPI_DB_EXEC,
        "Completed a predicate eval=%X Op=%p\n",
        WalkState->ControlState->Common.Value, WalkState->Op));

    /* Break to debugger to display result */

    FUNC5 (LocalObjDesc, WalkState);

    /*
     * Delete the predicate result object (we know that
     * we don't need it anymore)
     */
    if (LocalObjDesc != ObjDesc)
    {
        FUNC12 (LocalObjDesc);
    }
    FUNC12 (ObjDesc);

    WalkState->ControlState->Common.State = ACPI_CONTROL_NORMAL;
    FUNC13 (Status);
}