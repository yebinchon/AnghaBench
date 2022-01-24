#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_7__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_9__ {TYPE_1__ Signature; int /*<<< orphan*/  Flags; int /*<<< orphan*/  Length; int /*<<< orphan*/  Address; } ;
struct TYPE_8__ {int /*<<< orphan*/  Signature; int /*<<< orphan*/  Length; } ;
typedef  TYPE_2__ ACPI_TABLE_HEADER ;
typedef  TYPE_3__ ACPI_TABLE_DESC ;
typedef  int /*<<< orphan*/  ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void
FUNC2 (
    ACPI_TABLE_DESC         *TableDesc,
    ACPI_PHYSICAL_ADDRESS   Address,
    UINT8                   Flags,
    ACPI_TABLE_HEADER       *Table)
{

    /*
     * Initialize the table descriptor. Set the pointer to NULL, since the
     * table is not fully mapped at this time.
     */
    FUNC1 (TableDesc, 0, sizeof (ACPI_TABLE_DESC));
    TableDesc->Address = Address;
    TableDesc->Length = Table->Length;
    TableDesc->Flags = Flags;
    FUNC0 (TableDesc->Signature.Ascii, Table->Signature);
}