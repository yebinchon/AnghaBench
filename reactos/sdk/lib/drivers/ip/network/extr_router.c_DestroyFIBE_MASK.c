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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  ListEntry; } ;
typedef  TYPE_1__* PFIB_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

VOID FUNC3(
    PFIB_ENTRY FIBE)
/*
 * FUNCTION: Destroys an forward information base entry
 * ARGUMENTS:
 *     FIBE = Pointer to FIB entry
 * NOTES:
 *     The forward information base lock must be held when called
 */
{
    FUNC2(DEBUG_ROUTER, ("Called. FIBE (0x%X).\n", FIBE));

    /* Unlink the FIB entry from the list */
    FUNC1(&FIBE->ListEntry);

    /* And free the FIB entry */
    FUNC0(FIBE);
}