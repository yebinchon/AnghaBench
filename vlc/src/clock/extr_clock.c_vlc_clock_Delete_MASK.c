#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* owner; } ;
typedef  TYPE_1__ vlc_clock_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rc; TYPE_1__* master; } ;
typedef  TYPE_2__ vlc_clock_main_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(vlc_clock_t *clock)
{
    vlc_clock_main_t *main_clock = clock->owner;
    FUNC2(&main_clock->lock);
    if (clock == main_clock->master)
    {
        FUNC1(main_clock);
        main_clock->master = NULL;
    }
    main_clock->rc--;
    FUNC3(&main_clock->lock);
    FUNC0(clock);
}