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
typedef  struct vlc_timer* vlc_timer_t ;
struct vlc_timer {void (* func ) (void*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  reschedule; int /*<<< orphan*/  thread; int /*<<< orphan*/  overruns; scalar_t__ interval; scalar_t__ value; void* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_INPUT ; 
 int /*<<< orphan*/  FUNC0 (void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_timer*) ; 
 struct vlc_timer* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vlc_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_timer_thread ; 

int FUNC10 (vlc_timer_t *id, void (*func) (void *), void *data)
{
    struct vlc_timer *timer = FUNC3 (sizeof (*timer));

    if (FUNC4(timer == NULL))
        return ENOMEM;
    FUNC9 (&timer->lock);
    FUNC7 (&timer->reschedule);
    FUNC0 (func);
    timer->func = func;
    timer->data = data;
    timer->value = 0;
    timer->interval = 0;
    FUNC1(&timer->overruns, 0);

    if (FUNC5 (&timer->thread, vlc_timer_thread, timer,
                   VLC_THREAD_PRIORITY_INPUT))
    {
        FUNC6 (&timer->reschedule);
        FUNC8 (&timer->lock);
        FUNC2 (timer);
        return ENOMEM;
    }

    *id = timer;
    return 0;
}