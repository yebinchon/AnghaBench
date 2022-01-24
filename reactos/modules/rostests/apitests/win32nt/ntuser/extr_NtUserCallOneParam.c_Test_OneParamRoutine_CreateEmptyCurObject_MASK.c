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
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT ; 

void
FUNC3(void) /* XP/2k3 : 0x21, vista 0x25 */
{
    HICON hIcon ;

    /* Test 0 */
    hIcon = (HICON) FUNC0(0, _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT);
    FUNC2(hIcon != NULL);

    FUNC2(FUNC1(hIcon, 0) == TRUE);

    /* Test Garbage */
    hIcon = (HICON) FUNC0(0xdeadbeef, _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT);
    FUNC2(hIcon != NULL);

    FUNC2(FUNC1(hIcon, 0xbaadf00d) == TRUE);

}