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
typedef  int /*<<< orphan*/  PKSPIN_LOCK ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  scalar_t__ ACPI_SPINLOCK ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

ACPI_CPU_FLAGS
FUNC3(
    ACPI_SPINLOCK Handle)
{
    KIRQL OldIrql;

    if ((OldIrql = FUNC2()) >= DISPATCH_LEVEL)
    {
        FUNC1((PKSPIN_LOCK)Handle);
    }
    else
    {
        FUNC0((PKSPIN_LOCK)Handle, &OldIrql);
    }

    return (ACPI_CPU_FLAGS)OldIrql;
}