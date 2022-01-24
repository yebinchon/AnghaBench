#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_4__ {size_t (* Handler ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  Context; } ;
struct TYPE_3__ {int /*<<< orphan*/  EnableRegisterId; int /*<<< orphan*/  StatusRegisterId; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_CLEAR_STATUS ; 
 int /*<<< orphan*/  ACPI_DISABLE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t ACPI_INTERRUPT_NOT_HANDLED ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_2__* AcpiGbl_FixedEventHandlers ; 
 TYPE_1__* AcpiGbl_FixedEventInfo ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT32
FUNC5 (
    UINT32                  Event)
{

    FUNC1 ();


    /* Clear the status bit */

    (void) FUNC3 (
        AcpiGbl_FixedEventInfo[Event].StatusRegisterId,
        ACPI_CLEAR_STATUS);

    /*
     * Make sure that a handler exists. If not, report an error
     * and disable the event to prevent further interrupts.
     */
    if (!AcpiGbl_FixedEventHandlers[Event].Handler)
    {
        (void) FUNC3 (
            AcpiGbl_FixedEventInfo[Event].EnableRegisterId,
            ACPI_DISABLE_EVENT);

        FUNC0 ((AE_INFO,
            "No installed handler for fixed event - %s (%u), disabling",
            FUNC2 (Event), Event));

        return (ACPI_INTERRUPT_NOT_HANDLED);
    }

    /* Invoke the Fixed Event handler */

    return ((AcpiGbl_FixedEventHandlers[Event].Handler)(
        AcpiGbl_FixedEventHandlers[Event].Context));
}