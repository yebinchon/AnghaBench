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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 scalar_t__ WAIT_TIMEOUT ; 

__attribute__((used)) static void FUNC2(void)
{
    int diff = 200;
    int min_timeout = 100;
    DWORD time = FUNC0() + diff;

    while (diff > 0)
    {
        if (FUNC1(0, NULL, FALSE, min_timeout, QS_ALLINPUT) == WAIT_TIMEOUT)
            break;
        diff = time - FUNC0();
        min_timeout = 50;
    }
}