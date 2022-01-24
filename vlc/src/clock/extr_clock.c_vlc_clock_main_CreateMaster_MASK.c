#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rc; int /*<<< orphan*/ * master; } ;
typedef  TYPE_1__ vlc_clock_main_t ;
struct vlc_clock_cbs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct vlc_clock_cbs const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

vlc_clock_t *FUNC6(vlc_clock_main_t *main_clock,
                                         const struct vlc_clock_cbs *cbs,
                                         void *cbs_data)
{
    /* The master has always the 0 priority */
    vlc_clock_t *clock = FUNC0(main_clock, 0, cbs, cbs_data);
    if (!clock)
        return NULL;

    FUNC4(&main_clock->lock);
    if (main_clock->master != NULL)
    {
        FUNC1(main_clock->master);
        FUNC3(main_clock->master);
    }
    FUNC2(clock);
    main_clock->master = clock;
    main_clock->rc++;
    FUNC5(&main_clock->lock);

    return clock;
}