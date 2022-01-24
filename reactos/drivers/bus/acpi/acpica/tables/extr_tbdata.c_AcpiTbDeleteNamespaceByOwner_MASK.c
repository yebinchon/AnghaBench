#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_4__ {size_t CurrentTableCount; TYPE_1__* Tables; } ;
struct TYPE_3__ {int /*<<< orphan*/  OwnerId; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AcpiGbl_NamespaceRwLock ; 
 TYPE_2__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TbDeleteNamespaceByOwner ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    UINT32                  TableIndex)
{
    ACPI_OWNER_ID           OwnerId;
    ACPI_STATUS             Status;


    FUNC1 (TbDeleteNamespaceByOwner);


    Status = FUNC3 (ACPI_MTX_TABLES);
    if (FUNC0 (Status))
    {
        FUNC7 (Status);
    }

    if (TableIndex >= AcpiGbl_RootTableList.CurrentTableCount)
    {
        /* The table index does not exist */

        (void) FUNC5 (ACPI_MTX_TABLES);
        FUNC7 (AE_NOT_EXIST);
    }

    /* Get the owner ID for this table, used to delete namespace nodes */

    OwnerId = AcpiGbl_RootTableList.Tables[TableIndex].OwnerId;
    (void) FUNC5 (ACPI_MTX_TABLES);

    /*
     * Need to acquire the namespace writer lock to prevent interference
     * with any concurrent namespace walks. The interpreter must be
     * released during the deletion since the acquisition of the deletion
     * lock may block, and also since the execution of a namespace walk
     * must be allowed to use the interpreter.
     */
    Status = FUNC4 (&AcpiGbl_NamespaceRwLock);
    if (FUNC0 (Status))
    {
        FUNC7 (Status);
    }

    FUNC2 (OwnerId);
    FUNC6 (&AcpiGbl_NamespaceRwLock);
    FUNC7 (Status);
}