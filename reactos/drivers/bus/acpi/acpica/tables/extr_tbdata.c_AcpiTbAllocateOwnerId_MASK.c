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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 TYPE_2__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TbAllocateOwnerId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    UINT32                  TableIndex)
{
    ACPI_STATUS             Status = AE_BAD_PARAMETER;


    FUNC0 (TbAllocateOwnerId);


    (void) FUNC1 (ACPI_MTX_TABLES);
    if (TableIndex < AcpiGbl_RootTableList.CurrentTableCount)
    {
        Status = FUNC2 (
            &(AcpiGbl_RootTableList.Tables[TableIndex].OwnerId));
    }

    (void) FUNC3 (ACPI_MTX_TABLES);
    FUNC4 (Status);
}