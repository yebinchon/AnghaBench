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
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  int /*<<< orphan*/  ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5  (
    ACPI_HANDLE             DeviceHandle,
    ACPI_BUFFER             *RetBuffer)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;


    FUNC1 (AcpiGetIrqRoutingTable);


    /* Validate parameters then dispatch to internal routine */

    Status = FUNC3 (DeviceHandle, RetBuffer, &Node);
    if (FUNC0 (Status))
    {
        FUNC4 (Status);
    }

    Status = FUNC2 (Node, RetBuffer);
    FUNC4 (Status);
}