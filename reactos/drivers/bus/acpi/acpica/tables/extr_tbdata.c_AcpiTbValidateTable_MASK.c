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
struct TYPE_4__ {int /*<<< orphan*/  Pointer; int /*<<< orphan*/  Flags; int /*<<< orphan*/  Length; } ;
typedef  TYPE_1__ ACPI_TABLE_DESC ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TbValidateTable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    ACPI_TABLE_DESC         *TableDesc)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC0 (TbValidateTable);


    /* Validate the table if necessary */

    if (!TableDesc->Pointer)
    {
        Status = FUNC1 (TableDesc, &TableDesc->Pointer,
            &TableDesc->Length, &TableDesc->Flags);
        if (!TableDesc->Pointer)
        {
            Status = AE_NO_MEMORY;
        }
    }

    FUNC2 (Status);
}