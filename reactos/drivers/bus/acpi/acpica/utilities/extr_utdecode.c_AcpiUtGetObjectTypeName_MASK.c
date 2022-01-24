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
struct TYPE_6__ {int /*<<< orphan*/  Type; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UtGetObjectTypeName ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

const char *
FUNC6 (
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    FUNC1 (UtGetObjectTypeName);


    if (!ObjDesc)
    {
        FUNC0 ((ACPI_DB_EXEC, "Null Object Descriptor\n"));
        FUNC5 ("[NULL Object Descriptor]");
    }

    /* These descriptor types share a common area */

    if ((FUNC2 (ObjDesc) != ACPI_DESC_TYPE_OPERAND) &&
        (FUNC2 (ObjDesc) != ACPI_DESC_TYPE_NAMED))
    {
        FUNC0 ((ACPI_DB_EXEC,
            "Invalid object descriptor type: 0x%2.2X [%s] (%p)\n",
            FUNC2 (ObjDesc),
            FUNC3 (ObjDesc), ObjDesc));

        FUNC5 ("Invalid object");
    }

    FUNC5 (FUNC4 (ObjDesc->Common.Type));
}