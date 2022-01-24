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
struct TYPE_4__ {int Flags; scalar_t__ Address; } ;
typedef  TYPE_1__ ACPI_TABLE_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ; 
 int ACPI_TABLE_ORIGIN_MASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  TbUninstallTable ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5 (
    ACPI_TABLE_DESC         *TableDesc)
{

    FUNC1 (TbUninstallTable);


    /* Table must be installed */

    if (!TableDesc->Address)
    {
        return_VOID;
    }

    FUNC4 (TableDesc);

    if ((TableDesc->Flags & ACPI_TABLE_ORIGIN_MASK) ==
        ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL)
    {
        FUNC0 (FUNC2 (TableDesc->Address));
    }

    TableDesc->Address = FUNC3 (NULL);
    return_VOID;
}