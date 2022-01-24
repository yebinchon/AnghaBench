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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {scalar_t__ SpaceId; scalar_t__ RegRunCount; int /*<<< orphan*/  Function; } ;
typedef  TYPE_1__ ACPI_REG_WALK_INFO ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  scalar_t__ ACPI_ADR_SPACE_TYPE ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ; 
 scalar_t__ ACPI_ADR_SPACE_EC ; 
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ; 
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiEvRegRun ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  EvExecuteRegMethods ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5 (
    ACPI_NAMESPACE_NODE     *Node,
    ACPI_ADR_SPACE_TYPE     SpaceId,
    UINT32                  Function)
{
    ACPI_REG_WALK_INFO      Info;


    FUNC1 (EvExecuteRegMethods);

    /*
     * These address spaces do not need a call to _REG, since the ACPI
     * specification defines them as: "must always be accessible". Since
     * they never change state (never become unavailable), no need to ever
     * call _REG on them. Also, a DataTable is not a "real" address space,
     * so do not call _REG. September 2018.
     */
    if ((SpaceId == ACPI_ADR_SPACE_SYSTEM_MEMORY) ||
        (SpaceId == ACPI_ADR_SPACE_SYSTEM_IO) ||
        (SpaceId == ACPI_ADR_SPACE_DATA_TABLE))
    {
        return_VOID;
    }

    Info.SpaceId = SpaceId;
    Info.Function = Function;
    Info.RegRunCount = 0;

    FUNC0 ((ACPI_DB_NAMES,
        "    Running _REG methods for SpaceId %s\n",
        FUNC4 (Info.SpaceId)));

    /*
     * Run all _REG methods for all Operation Regions for this space ID. This
     * is a separate walk in order to handle any interdependencies between
     * regions and _REG methods. (i.e. handlers must be installed for all
     * regions of this Space ID before we can run any _REG methods)
     */
    (void) FUNC3 (ACPI_TYPE_ANY, Node, ACPI_UINT32_MAX,
        ACPI_NS_WALK_UNLOCK, AcpiEvRegRun, NULL, &Info, NULL);

    /* Special case for EC: handle "orphan" _REG methods with no region */

    if (SpaceId == ACPI_ADR_SPACE_EC)
    {
        FUNC2 (Node);
    }

    FUNC0 ((ACPI_DB_NAMES,
        "    Executed %u _REG methods for SpaceId %s\n",
        Info.RegRunCount, FUNC4 (Info.SpaceId)));

    return_VOID;
}