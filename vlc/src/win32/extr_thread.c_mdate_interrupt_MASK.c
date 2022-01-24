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
typedef  int vlc_tick_t ;
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static vlc_tick_t FUNC4 (void)
{
    ULONGLONG ts;
    BOOL ret;

    ret = FUNC0 (&ts);
    if (FUNC3(!ret))
        FUNC1 ();

    /* hundreds of nanoseconds */
    FUNC2 ((10000000 % CLOCK_FREQ) == 0, "Broken frequencies ratio");
    return ts / (10000000 / CLOCK_FREQ);
}