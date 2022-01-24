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
struct TYPE_5__ {TYPE_2__* Next; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_GENERIC_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1 (
    ACPI_GENERIC_STATE      **ListHead,
    ACPI_GENERIC_STATE      *State)
{
    FUNC0 ();


    /* Push the state object onto the front of the list (stack) */

    State->Common.Next = *ListHead;
    *ListHead = State;
    return;
}