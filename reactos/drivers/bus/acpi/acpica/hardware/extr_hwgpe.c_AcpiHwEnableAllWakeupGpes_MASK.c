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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiHwEnableWakeupGpeBlock ; 
 int /*<<< orphan*/  HwEnableAllWakeupGpes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    void)
{
    ACPI_STATUS             Status;


    FUNC0 (HwEnableAllWakeupGpes);


    Status = FUNC1 (AcpiHwEnableWakeupGpeBlock, NULL);
    FUNC2 (Status);
}