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
struct TYPE_3__ {int Flags; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int ACPI_TABLE_IS_LOADED ; 
 TYPE_2__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 

BOOLEAN
FUNC2 (
    UINT32                  TableIndex)
{
    BOOLEAN                 IsLoaded = FALSE;


    (void) FUNC0 (ACPI_MTX_TABLES);
    if (TableIndex < AcpiGbl_RootTableList.CurrentTableCount)
    {
        IsLoaded = (BOOLEAN)
            (AcpiGbl_RootTableList.Tables[TableIndex].Flags &
            ACPI_TABLE_IS_LOADED);
    }

    (void) FUNC1 (ACPI_MTX_TABLES);
    return (IsLoaded);
}