#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int UINT32 ;
struct TYPE_10__ {TYPE_3__* Next; } ;
struct TYPE_12__ {TYPE_1__ Common; } ;
struct TYPE_11__ {int NumOperands; scalar_t__ OperandIndex; int /*<<< orphan*/ ** Operands; } ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int ACPI_OBJ_NUM_OPERANDS ; 
 int /*<<< orphan*/  AE_BAD_DATA ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  DsCreateOperands ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *FirstArg)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_PARSE_OBJECT       *Arg;
    ACPI_PARSE_OBJECT       *Arguments[ACPI_OBJ_NUM_OPERANDS];
    UINT32                  ArgCount = 0;
    UINT32                  Index = WalkState->NumOperands;
    UINT32                  i;


    FUNC3 (DsCreateOperands, FirstArg);


    /* Get all arguments in the list */

    Arg = FirstArg;
    while (Arg)
    {
        if (Index >= ACPI_OBJ_NUM_OPERANDS)
        {
            FUNC6 (AE_BAD_DATA);
        }

        Arguments[Index] = Arg;
        WalkState->Operands [Index] = NULL;

        /* Move on to next argument, if any */

        Arg = Arg->Common.Next;
        ArgCount++;
        Index++;
    }

    FUNC0 ((ACPI_DB_DISPATCH,
        "NumOperands %d, ArgCount %d, Index %d\n",
        WalkState->NumOperands, ArgCount, Index));

    /* Create the interpreter arguments, in reverse order */

    Index--;
    for (i = 0; i < ArgCount; i++)
    {
        Arg = Arguments[Index];
        WalkState->OperandIndex = (UINT8) Index;

        Status = FUNC4 (WalkState, Arg, Index);
        if (FUNC2 (Status))
        {
            goto Cleanup;
        }

        FUNC0 ((ACPI_DB_DISPATCH,
            "Created Arg #%u (%p) %u args total\n",
            Index, Arg, ArgCount));
        Index--;
    }

    FUNC6 (Status);


Cleanup:
    /*
     * We must undo everything done above; meaning that we must
     * pop everything off of the operand stack and delete those
     * objects
     */
    FUNC5 (ArgCount, WalkState);

    FUNC1 ((AE_INFO, Status, "While creating Arg %u", Index));
    FUNC6 (Status);
}