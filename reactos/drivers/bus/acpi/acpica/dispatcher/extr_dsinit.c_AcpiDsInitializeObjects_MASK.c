#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  OpRegionCount; int /*<<< orphan*/  MethodCount; int /*<<< orphan*/  SerializedMethodCount; int /*<<< orphan*/  NonSerialMethodCount; int /*<<< orphan*/  SerialMethodCount; int /*<<< orphan*/  DeviceCount; int /*<<< orphan*/  ObjectCount; int /*<<< orphan*/  TableIndex; int /*<<< orphan*/  OwnerId; } ;
struct TYPE_6__ {int /*<<< orphan*/  OemTableId; int /*<<< orphan*/  Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_2__ ACPI_INIT_WALK_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_NO_UNLOCK ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiDsInitOneObject ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DsInitializeObjects ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC11 (
    UINT32                  TableIndex,
    ACPI_NAMESPACE_NODE     *StartNode)
{
    ACPI_STATUS             Status;
    ACPI_INIT_WALK_INFO     Info;
    ACPI_TABLE_HEADER       *Table;
    ACPI_OWNER_ID           OwnerId;


    FUNC5 (DsInitializeObjects);


    Status = FUNC8 (TableIndex, &OwnerId);
    if (FUNC4 (Status))
    {
        FUNC10 (Status);
    }

    FUNC1 ((ACPI_DB_DISPATCH,
        "**** Starting initialization of namespace objects ****\n"));

    /* Set all init info to zero */

    FUNC9 (&Info, 0, sizeof (ACPI_INIT_WALK_INFO));

    Info.OwnerId = OwnerId;
    Info.TableIndex = TableIndex;

    /* Walk entire namespace from the supplied root */

    /*
     * We don't use AcpiWalkNamespace since we do not want to acquire
     * the namespace reader lock.
     */
    Status = FUNC7 (ACPI_TYPE_ANY, StartNode, ACPI_UINT32_MAX,
        ACPI_NS_WALK_NO_UNLOCK, AcpiDsInitOneObject, NULL, &Info, NULL);
    if (FUNC4 (Status))
    {
        FUNC3 ((AE_INFO, Status, "During WalkNamespace"));
    }

    Status = FUNC6 (TableIndex, &Table);
    if (FUNC4 (Status))
    {
        FUNC10 (Status);
    }

    /* DSDT is always the first AML table */

    if (FUNC0 (Table->Signature, ACPI_SIG_DSDT))
    {
        FUNC2 ((ACPI_DB_INIT,
            "\nACPI table initialization:\n"));
    }

    /* Summary of objects initialized */

    FUNC2 ((ACPI_DB_INIT,
        "Table [%4.4s: %-8.8s] (id %.2X) - %4u Objects with %3u Devices, "
        "%3u Regions, %4u Methods (%u/%u/%u Serial/Non/Cvt)\n",
        Table->Signature, Table->OemTableId, OwnerId, Info.ObjectCount,
        Info.DeviceCount,Info.OpRegionCount, Info.MethodCount,
        Info.SerialMethodCount, Info.NonSerialMethodCount,
        Info.SerializedMethodCount));

    FUNC1 ((ACPI_DB_DISPATCH, "%u Methods, %u Regions\n",
        Info.MethodCount, Info.OpRegionCount));

    FUNC10 (AE_OK);
}