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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON ; 

void
FUNC2(void) /* 0x42 */
{
    BOOL bInverse;

    FUNC0(TRUE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    bInverse = (BOOL)FUNC0(FALSE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    FUNC1(bInverse == TRUE);
    bInverse = (BOOL)FUNC0(FALSE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    FUNC1(bInverse == FALSE);

    // TODO: test other values
}