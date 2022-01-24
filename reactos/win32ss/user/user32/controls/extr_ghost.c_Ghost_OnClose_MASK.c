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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GHOST_INTERVAL ; 
 int /*<<< orphan*/  GHOST_TIMER_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_ASK_TERMINATE ; 
 int /*<<< orphan*/  IDS_HUNG_UP_TITLE ; 
 scalar_t__ IDYES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MB_ICONINFORMATION ; 
 int MB_YESNO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  User32Instance ; 

__attribute__((used)) static void
FUNC6(HWND hwnd)
{
    INT id;
    WCHAR szAskTerminate[128];
    WCHAR szHungUpTitle[128];

    // stop timer
    FUNC2(hwnd, GHOST_TIMER_ID);

    FUNC3(User32Instance, IDS_ASK_TERMINATE,
                szAskTerminate, FUNC0(szAskTerminate));
    FUNC3(User32Instance, IDS_HUNG_UP_TITLE,
                szHungUpTitle, FUNC0(szHungUpTitle));

    id = FUNC4(hwnd, szAskTerminate, szHungUpTitle,
                     MB_ICONINFORMATION | MB_YESNO);
    if (id == IDYES)
    {
        // destroy the target
        FUNC1(hwnd, TRUE);
        return;
    }

    // restart timer
    FUNC5(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, NULL);
}