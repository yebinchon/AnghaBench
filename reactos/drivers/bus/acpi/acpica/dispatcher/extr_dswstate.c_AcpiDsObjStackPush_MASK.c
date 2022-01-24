#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ NumOperands; size_t OperandIndex; void** Operands; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_OBJ_NUM_OPERANDS ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_STACK_OVERFLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsObjStackPush ; 

ACPI_STATUS
FUNC4 (
    void                    *Object,
    ACPI_WALK_STATE         *WalkState)
{
    FUNC2 (DsObjStackPush);


    /* Check for stack overflow */

    if (WalkState->NumOperands >= ACPI_OBJ_NUM_OPERANDS)
    {
        FUNC1 ((AE_INFO,
            "Object stack overflow! Obj=%p State=%p #Ops=%u",
            Object, WalkState, WalkState->NumOperands));
        return (AE_STACK_OVERFLOW);
    }

    /* Put the object onto the stack */

    WalkState->Operands [WalkState->OperandIndex] = Object;
    WalkState->NumOperands++;

    /* For the usual order of filling the operand stack */

    WalkState->OperandIndex++;

    FUNC0 ((ACPI_DB_EXEC, "Obj=%p [%s] State=%p #Ops=%X\n",
        Object, FUNC3 ((ACPI_OPERAND_OBJECT *) Object),
        WalkState, WalkState->NumOperands));

    return (AE_OK);
}