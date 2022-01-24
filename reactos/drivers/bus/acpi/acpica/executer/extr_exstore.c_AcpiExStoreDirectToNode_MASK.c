#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  Type; } ;
struct TYPE_12__ {int /*<<< orphan*/  Type; } ;
struct TYPE_13__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  TYPE_3__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  ExStoreDirectToNode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC9 (
    ACPI_OPERAND_OBJECT     *SourceDesc,
    ACPI_NAMESPACE_NODE     *Node,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *NewDesc;


    FUNC2 (ExStoreDirectToNode);


    FUNC0 ((ACPI_DB_EXEC,
        "Storing [%s] (%p) directly into node [%s] (%p)"
        " with no implicit conversion\n",
        FUNC5 (SourceDesc), SourceDesc,
        FUNC6 (Node->Type), Node));

    /* Copy the source object to a new object */

    Status = FUNC4 (SourceDesc, &NewDesc, WalkState);
    if (FUNC1 (Status))
    {
        FUNC8 (Status);
    }

    /* Attach the new object to the node */

    Status = FUNC3 (Node, NewDesc, NewDesc->Common.Type);
    FUNC7 (NewDesc);
    FUNC8 (Status);
}