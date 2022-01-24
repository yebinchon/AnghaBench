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
typedef  scalar_t__ HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _NOPARAM_ROUTINE_CREATEMENU ; 

void
FUNC4(void) /* 0 */
{
    HMENU hMenu;

    hMenu = (HMENU)FUNC2(_NOPARAM_ROUTINE_CREATEMENU);
    FUNC3(FUNC1(hMenu) == TRUE);
    FUNC0(hMenu);

}