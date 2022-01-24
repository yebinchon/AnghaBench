#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  AmlOpcode; } ;
struct TYPE_17__ {TYPE_1__ Common; } ;
struct TYPE_16__ {scalar_t__ (* AscendingCallback ) (TYPE_2__*) ;int /*<<< orphan*/  ArgCount; int /*<<< orphan*/  ArgTypes; int /*<<< orphan*/  ParserState; int /*<<< orphan*/  Opcode; int /*<<< orphan*/  OpInfo; TYPE_3__* Op; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ AE_CTRL_PENDING ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__**,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PsCompleteFinalOp ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

ACPI_STATUS
FUNC10 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op,
    ACPI_STATUS             Status)
{
    ACPI_STATUS             Status2;


    FUNC2 (PsCompleteFinalOp, WalkState);


    /*
     * Complete the last Op (if not completed), and clear the scope stack.
     * It is easily possible to end an AML "package" with an unbounded number
     * of open scopes (such as when several ASL blocks are closed with
     * sequential closing braces). We want to terminate each one cleanly.
     */
    FUNC0 ((ACPI_DB_PARSE, "AML package complete at Op %p\n", Op));
    do
    {
        if (Op)
        {
            if (WalkState->AscendingCallback != NULL)
            {
                WalkState->Op = Op;
                WalkState->OpInfo = FUNC5 (Op->Common.AmlOpcode);
                WalkState->Opcode = Op->Common.AmlOpcode;

                Status = WalkState->AscendingCallback (WalkState);
                Status = FUNC6 (WalkState, Op, Status);
                if (Status == AE_CTRL_PENDING)
                {
                    Status = FUNC3 (WalkState, &Op, AE_OK);
                    if (FUNC1 (Status))
                    {
                        FUNC8 (Status);
                    }
                }

                if (Status == AE_CTRL_TERMINATE)
                {
                    Status = AE_OK;

                    /* Clean up */
                    do
                    {
                        if (Op)
                        {
                            Status2 = FUNC4 (WalkState, Op);
                            if (FUNC1 (Status2))
                            {
                                FUNC8 (Status2);
                            }
                        }

                        FUNC7 (&(WalkState->ParserState), &Op,
                            &WalkState->ArgTypes, &WalkState->ArgCount);

                    } while (Op);

                    FUNC8 (Status);
                }

                else if (FUNC1 (Status))
                {
                    /* First error is most important */

                    (void) FUNC4 (WalkState, Op);
                    FUNC8 (Status);
                }
            }

            Status2 = FUNC4 (WalkState, Op);
            if (FUNC1 (Status2))
            {
                FUNC8 (Status2);
            }
        }

        FUNC7 (&(WalkState->ParserState), &Op, &WalkState->ArgTypes,
            &WalkState->ArgCount);

    } while (Op);

    FUNC8 (Status);
}