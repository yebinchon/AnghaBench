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
struct TYPE_3__ {scalar_t__ Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_LOCAL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC4 (
    ACPI_NAMESPACE_NODE     *Node,
    const char              *Message)
{
    ACPI_BUFFER             Buffer;
    ACPI_STATUS             Status;


    if (!Node)
    {
        FUNC3 ("[NULL NAME]");
        return;
    }

    /* Convert handle to full pathname and print it (with supplied message) */

    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;

    Status = FUNC2 (Node, &Buffer, TRUE);
    if (FUNC1 (Status))
    {
        if (Message)
        {
            FUNC3 ("%s ", Message);
        }

        FUNC3 ("%s", (char *) Buffer.Pointer);
        FUNC0 (Buffer.Pointer);
    }
}