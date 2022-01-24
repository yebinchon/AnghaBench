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
struct TYPE_4__ {scalar_t__ Pointer; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_PATH_SEGMENT_LENGTH ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NsHandleToName ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_HANDLE             TargetHandle,
    ACPI_BUFFER             *Buffer)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;
    const char              *NodeName;


    FUNC3 (NsHandleToName, TargetHandle);


    Node = FUNC4 (TargetHandle);
    if (!Node)
    {
        FUNC7 (AE_BAD_PARAMETER);
    }

    /* Validate/Allocate/Clear caller buffer */

    Status = FUNC6 (Buffer, ACPI_PATH_SEGMENT_LENGTH);
    if (FUNC2 (Status))
    {
        FUNC7 (Status);
    }

    /* Just copy the ACPI name from the Node and zero terminate it */

    NodeName = FUNC5 (Node);
    FUNC0 (Buffer->Pointer, NodeName);
    ((char *) Buffer->Pointer) [ACPI_NAMESEG_SIZE] = 0;

    FUNC1 ((ACPI_DB_EXEC, "%4.4s\n", (char *) Buffer->Pointer));
    FUNC7 (AE_OK);
}