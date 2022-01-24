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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  ULONGLONG ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static vlc_tick_t FUNC3 (void)
{
    ULONGLONG ts = FUNC0 ();

    /* milliseconds */
    FUNC2 ((CLOCK_FREQ % 1000) == 0, "Broken frequencies ratio");
    return FUNC1( ts );
}