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
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * master; } ;
typedef  TYPE_1__ vlc_clock_main_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vlc_clock_main_t *main_clock, vlc_clock_t *clock)
{
    FUNC3(&main_clock->lock);
    if (main_clock->master != NULL)
    {
        FUNC0(main_clock->master);
        FUNC2(main_clock->master);
    }
    FUNC1(clock);
    main_clock->master = clock;
    FUNC4(&main_clock->lock);
}