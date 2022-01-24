#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  DescriptorType; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AcpiGbl_StateCache ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

ACPI_GENERIC_STATE *
FUNC2 (
    void)
{
    ACPI_GENERIC_STATE      *State;


    FUNC0 ();


    State = FUNC1 (AcpiGbl_StateCache);
    if (State)
    {
        /* Initialize */
        State->Common.DescriptorType = ACPI_DESC_TYPE_STATE;
    }

    return (State);
}