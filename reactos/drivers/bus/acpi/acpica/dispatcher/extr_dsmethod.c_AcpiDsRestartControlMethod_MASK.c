#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ReturnDesc; scalar_t__ ReturnUsed; int /*<<< orphan*/ * ImplicitReturnObj; int /*<<< orphan*/  Results; int /*<<< orphan*/  MethodCallOp; int /*<<< orphan*/  MethodNode; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsRestartControlMethod ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_OPERAND_OBJECT     *ReturnDesc)
{
    ACPI_STATUS             Status;
    int                     SameAsImplicitReturn;


    FUNC2 (DsRestartControlMethod, WalkState);


    FUNC0 (*(ACPI_DB_DISPATCH,
        "****Restart [%4.4s] Op %p ReturnValueFromCallee %p\n",
        FUNC5 (WalkState->MethodNode),
        WalkState->MethodCallOp, ReturnDesc));

    FUNC0 ((ACPI_DB_DISPATCH,
        "    ReturnFromThisMethodUsed?=%X ResStack %p Walk %p\n",
        WalkState->ReturnUsed,
        WalkState->Results, WalkState));

    /* Did the called method return a value? */

    if (ReturnDesc)
    {
        /* Is the implicit return object the same as the return desc? */

        SameAsImplicitReturn = (WalkState->ImplicitReturnObj == ReturnDesc);

        /* Are we actually going to use the return value? */

        if (WalkState->ReturnUsed)
        {
            /* Save the return value from the previous method */

            Status = FUNC4 (ReturnDesc, WalkState);
            if (FUNC1 (Status))
            {
                FUNC6 (ReturnDesc);
                FUNC7 (Status);
            }

            /*
             * Save as THIS method's return value in case it is returned
             * immediately to yet another method
             */
            WalkState->ReturnDesc = ReturnDesc;
        }

        /*
         * The following code is the optional support for the so-called
         * "implicit return". Some AML code assumes that the last value of the
         * method is "implicitly" returned to the caller, in the absence of an
         * explicit return value.
         *
         * Just save the last result of the method as the return value.
         *
         * NOTE: this is optional because the ASL language does not actually
         * support this behavior.
         */
        else if (!FUNC3 (ReturnDesc, WalkState, FALSE) ||
                 SameAsImplicitReturn)
        {
            /*
             * Delete the return value if it will not be used by the
             * calling method or remove one reference if the explicit return
             * is the same as the implicit return value.
             */
            FUNC6 (ReturnDesc);
        }
    }

    FUNC7 (AE_OK);
}