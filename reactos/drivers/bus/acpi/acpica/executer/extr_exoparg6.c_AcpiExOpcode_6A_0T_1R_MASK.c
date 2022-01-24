#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_13__ {size_t Value; } ;
struct TYPE_12__ {size_t Count; TYPE_4__** Elements; } ;
struct TYPE_15__ {TYPE_2__ Integer; TYPE_1__ Package; } ;
struct TYPE_14__ {int Opcode; TYPE_4__* ResultObj; TYPE_4__** Operands; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_AML_PACKAGE_LIMIT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_LOAD_TABLE_OP 129 
#define  AML_MATCH_OP 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  ExOpcode_6A_0T_1R ; 
 size_t MAX_MATCH_OPERATOR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_OPERAND_OBJECT     **Operand = &WalkState->Operands[0];
    ACPI_OPERAND_OBJECT     *ReturnDesc = NULL;
    ACPI_STATUS             Status = AE_OK;
    UINT64                  Index;
    ACPI_OPERAND_OBJECT     *ThisElement;


    FUNC3 (ExOpcode_6A_0T_1R,
        FUNC6 (WalkState->Opcode));


    switch (WalkState->Opcode)
    {
    case AML_MATCH_OP:
        /*
         * Match (SearchPkg[0], MatchOp1[1], MatchObj1[2],
         *                      MatchOp2[3], MatchObj2[4], StartIndex[5])
         */

        /* Validate both Match Term Operators (MTR, MEQ, etc.) */

        if ((Operand[1]->Integer.Value > MAX_MATCH_OPERATOR) ||
            (Operand[3]->Integer.Value > MAX_MATCH_OPERATOR))
        {
            FUNC0 ((AE_INFO, "Match operator out of range"));
            Status = AE_AML_OPERAND_VALUE;
            goto Cleanup;
        }

        /* Get the package StartIndex, validate against the package length */

        Index = Operand[5]->Integer.Value;
        if (Index >= Operand[0]->Package.Count)
        {
            FUNC0 ((AE_INFO,
                "Index (0x%8.8X%8.8X) beyond package end (0x%X)",
                FUNC2 (Index), Operand[0]->Package.Count));
            Status = AE_AML_PACKAGE_LIMIT;
            goto Cleanup;
        }

        /* Create an integer for the return value */
        /* Default return value is ACPI_UINT64_MAX if no match found */

        ReturnDesc = FUNC7 (ACPI_UINT64_MAX);
        if (!ReturnDesc)
        {
            Status = AE_NO_MEMORY;
            goto Cleanup;

        }

        /*
         * Examine each element until a match is found. Both match conditions
         * must be satisfied for a match to occur. Within the loop,
         * "continue" signifies that the current element does not match
         * and the next should be examined.
         *
         * Upon finding a match, the loop will terminate via "break" at
         * the bottom. If it terminates "normally", MatchValue will be
         * ACPI_UINT64_MAX (Ones) (its initial value) indicating that no
         * match was found.
         */
        for ( ; Index < Operand[0]->Package.Count; Index++)
        {
            /* Get the current package element */

            ThisElement = Operand[0]->Package.Elements[Index];

            /* Treat any uninitialized (NULL) elements as non-matching */

            if (!ThisElement)
            {
                continue;
            }

            /*
             * Both match conditions must be satisfied. Execution of a continue
             * (proceed to next iteration of enclosing for loop) signifies a
             * non-match.
             */
            if (!FUNC4 ((UINT32) Operand[1]->Integer.Value,
                    ThisElement, Operand[2]))
            {
                continue;
            }

            if (!FUNC4 ((UINT32) Operand[3]->Integer.Value,
                    ThisElement, Operand[4]))
            {
                continue;
            }

            /* Match found: Index is the return value */

            ReturnDesc->Integer.Value = Index;
            break;
        }
        break;

    case AML_LOAD_TABLE_OP:

        Status = FUNC5 (WalkState, &ReturnDesc);
        break;

    default:

        FUNC0 ((AE_INFO, "Unknown AML opcode 0x%X",
            WalkState->Opcode));

        Status = AE_AML_BAD_OPCODE;
        goto Cleanup;
    }


Cleanup:

    /* Delete return object on error */

    if (FUNC1 (Status))
    {
        FUNC8 (ReturnDesc);
    }

    /* Save return object on success */

    else
    {
        WalkState->ResultObj = ReturnDesc;
    }

    FUNC9 (Status);
}