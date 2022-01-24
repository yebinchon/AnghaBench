#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_10__ {int /*<<< orphan*/  Value; } ;
struct TYPE_9__ {int /*<<< orphan*/  Node; } ;
struct TYPE_12__ {TYPE_2__ Common; TYPE_1__ Scope; } ;
struct TYPE_11__ {TYPE_4__* ScopeInfo; scalar_t__ ScopeDepth; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NAMESPACE_ROOT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_STACK_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__**) ; 
 int /*<<< orphan*/  DsScopeStackPop ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_GENERIC_STATE      *ScopeInfo;
    ACPI_GENERIC_STATE      *NewScopeInfo;


    FUNC2 (DsScopeStackPop);


    /*
     * Pop scope info object off the stack.
     */
    ScopeInfo = FUNC6 (&WalkState->ScopeInfo);
    if (!ScopeInfo)
    {
        FUNC7 (AE_STACK_UNDERFLOW);
    }

    WalkState->ScopeDepth--;

    FUNC0 ((ACPI_DB_EXEC,
        "[%.2d] Popped scope [%4.4s] (%s), New scope -> ",
        (UINT32) WalkState->ScopeDepth,
        FUNC4 (ScopeInfo->Scope.Node),
        FUNC5 (ScopeInfo->Common.Value)));

    NewScopeInfo = WalkState->ScopeInfo;
    if (NewScopeInfo)
    {
        FUNC1 ((ACPI_DB_EXEC, "[%4.4s] (%s)\n",
            FUNC4 (NewScopeInfo->Scope.Node),
            FUNC5 (NewScopeInfo->Common.Value)));
    }
    else
    {
        FUNC1 ((ACPI_DB_EXEC, "%s\n", ACPI_NAMESPACE_ROOT));
    }

    FUNC3 (ScopeInfo);
    FUNC7 (AE_OK);
}