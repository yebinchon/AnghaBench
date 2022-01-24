#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_5__ {size_t NumOperands; int /*<<< orphan*/ * Operands; } ;
typedef  TYPE_1__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  DsResolveOperands ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC4 (
    ACPI_WALK_STATE         *WalkState)
{
    UINT32                  i;
    ACPI_STATUS             Status = AE_OK;


    FUNC1 (DsResolveOperands, WalkState);


    /*
     * Attempt to resolve each of the valid operands
     * Method arguments are passed by reference, not by value. This means
     * that the actual objects are passed, not copies of the objects.
     */
    for (i = 0; i < WalkState->NumOperands; i++)
    {
        Status = FUNC2 (&WalkState->Operands[i], WalkState);
        if (FUNC0 (Status))
        {
            break;
        }
    }

    FUNC3 (Status);
}