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
typedef  int /*<<< orphan*/  ACPI_SIZE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC3 (
    ACPI_SIZE               Size)
{
    void                    *Allocation;


    FUNC0 ();


    Allocation = FUNC1 (Size);
    if (Allocation)
    {
        /* Clear the memory block */

        FUNC2 (Allocation, 0, Size);
    }

    return (Allocation);
}