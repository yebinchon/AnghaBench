#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 size_t ACPI_METHOD_NUM_ARGS ; 
 int /*<<< orphan*/  ACPI_REFCLASS_ARG ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsMethodDataInitArgs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    ACPI_OPERAND_OBJECT     **Params,
    UINT32                  MaxParamCount,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    UINT32                  Index = 0;


    FUNC2 (DsMethodDataInitArgs, Params);


    if (!Params)
    {
        FUNC0 ((ACPI_DB_EXEC,
            "No parameter list passed to method\n"));
        FUNC4 (AE_OK);
    }

    /* Copy passed parameters into the new method stack frame */

    while ((Index < ACPI_METHOD_NUM_ARGS) &&
           (Index < MaxParamCount)        &&
            Params[Index])
    {
        /*
         * A valid parameter.
         * Store the argument in the method/walk descriptor.
         * Do not copy the arg in order to implement call by reference
         */
        Status = FUNC3 (
            ACPI_REFCLASS_ARG, Index, Params[Index], WalkState);
        if (FUNC1 (Status))
        {
            FUNC4 (Status);
        }

        Index++;
    }

    FUNC0 ((ACPI_DB_EXEC, "%u args passed to method\n", Index));
    FUNC4 (AE_OK);
}