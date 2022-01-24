#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (
    ACPI_OPERAND_OBJECT     **ObjList)
{
    ACPI_OPERAND_OBJECT     **InternalObj;


    FUNC1 ();


    /* Walk the null-terminated internal list */

    for (InternalObj = ObjList; *InternalObj; InternalObj++)
    {
        FUNC2 (*InternalObj);
    }

    /* Free the combined parameter pointer list and object array */

    FUNC0 (ObjList);
    return;
}