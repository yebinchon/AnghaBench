#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_4__ {size_t NumOperands; int /*<<< orphan*/ ** Operands; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsClearOperands ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC2 (
    ACPI_WALK_STATE         *WalkState)
{
    UINT32                  i;


    FUNC0 (DsClearOperands, WalkState);


    /* Remove a reference on each operand on the stack */

    for (i = 0; i < WalkState->NumOperands; i++)
    {
        /*
         * Remove a reference to all operands, including both
         * "Arguments" and "Targets".
         */
        FUNC1 (WalkState->Operands[i]);
        WalkState->Operands[i] = NULL;
    }

    WalkState->NumOperands = 0;
    return_VOID;
}