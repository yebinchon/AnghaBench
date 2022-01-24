#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hwndTarget; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ GHOST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GHOST_INTERVAL ; 
 scalar_t__ GHOST_TIMER_ID ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(HWND hwnd, UINT id)
{
    HWND hwndTarget;
    GHOST_DATA *pData = FUNC0(hwnd);

    if (id != GHOST_TIMER_ID || !pData)
        return;

    // stop the timer
    FUNC4(hwnd, id);

    hwndTarget = pData->hwndTarget;
    if (!FUNC3(hwndTarget) || !FUNC2(hwndTarget))
    {
        // resume if window is destroyed or responding
        FUNC1(hwnd, FALSE);
        return;
    }

    // restart the timer
    FUNC5(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, NULL);
}