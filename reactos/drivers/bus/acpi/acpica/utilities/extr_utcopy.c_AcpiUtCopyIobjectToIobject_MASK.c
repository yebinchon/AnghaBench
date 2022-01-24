#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ Type; } ;
struct TYPE_12__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  UtCopyIobjectToIobject ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_OPERAND_OBJECT     *SourceDesc,
    ACPI_OPERAND_OBJECT     **DestDesc,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC1 (UtCopyIobjectToIobject);


    /* Create the top level object */

    *DestDesc = FUNC4 (SourceDesc->Common.Type);
    if (!*DestDesc)
    {
        FUNC6 (AE_NO_MEMORY);
    }

    /* Copy the object and possible subobjects */

    if (SourceDesc->Common.Type == ACPI_TYPE_PACKAGE)
    {
        Status = FUNC2 (
            SourceDesc, *DestDesc, WalkState);
    }
    else
    {
        Status = FUNC3 (SourceDesc, *DestDesc);
    }

    /* Delete the allocated object if copy failed */

    if (FUNC0 (Status))
    {
        FUNC5 (*DestDesc);
    }

    FUNC6 (Status);
}