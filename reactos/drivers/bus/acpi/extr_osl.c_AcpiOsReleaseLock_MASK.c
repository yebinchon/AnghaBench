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
typedef  scalar_t__ KIRQL ;
typedef  scalar_t__ ACPI_SPINLOCK ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 scalar_t__ DISPATCH_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(
    ACPI_SPINLOCK Handle,
    ACPI_CPU_FLAGS Flags)
{
    KIRQL OldIrql = (KIRQL)Flags;

    if (OldIrql >= DISPATCH_LEVEL)
    {
        FUNC1((PKSPIN_LOCK)Handle);
    }
    else
    {
        FUNC0((PKSPIN_LOCK)Handle, OldIrql);
    }
}