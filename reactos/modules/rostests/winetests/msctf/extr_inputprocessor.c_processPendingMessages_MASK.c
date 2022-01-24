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
typedef  int /*<<< orphan*/  MSG ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_TIMEOUT ; 

__attribute__((used)) static void FUNC5(void)
{
    MSG msg;
    int diff = 200;
    int min_timeout = 100;
    DWORD time = FUNC1() + diff;

    while (diff > 0)
    {
        if (FUNC2(0, NULL, FALSE, min_timeout, QS_ALLINPUT) == WAIT_TIMEOUT)
            break;
        while (FUNC3(&msg, 0, 0, 0, PM_REMOVE))
        {
            FUNC4(&msg);
            FUNC0(&msg);
        }
        diff = time - FUNC1();
    }
}