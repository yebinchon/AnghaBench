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
typedef  scalar_t__ ULONGLONG ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    FILETIME ft;
    ULONGLONG time1, time2;
    LONGLONG diff;

    if (!&pGetSystemTimePreciseAsFileTime)
    {
        FUNC4("GetSystemTimePreciseAsFileTime() is not supported.\n");
        return;
    }

    FUNC0(&ft);
    time1 = FUNC1(&ft);
    FUNC3(&ft);
    time2 = FUNC1(&ft);
    diff = time2 - time1;
    if (diff < 0)
        diff = -diff;
    FUNC2(diff < 1000000, "Difference between GetSystemTimeAsFileTime and GetSystemTimePreciseAsFileTime more than 100 ms\n");

    FUNC3(&ft);
    time1 = FUNC1(&ft);
    do {
        FUNC3(&ft);
        time2 = FUNC1(&ft);
    } while (time2 == time1);
    diff = time2 - time1;
    FUNC2(diff < 10000 && diff > 0, "GetSystemTimePreciseAsFileTime incremented by more than 1 ms\n");
}