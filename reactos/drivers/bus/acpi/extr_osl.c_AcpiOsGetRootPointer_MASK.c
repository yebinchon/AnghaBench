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
typedef  int /*<<< orphan*/  ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

ACPI_PHYSICAL_ADDRESS
FUNC2 (
    void)
{
    ACPI_PHYSICAL_ADDRESS pa = 0;

    FUNC1("AcpiOsGetRootPointer\n");

    FUNC0(&pa);
    return pa;
}