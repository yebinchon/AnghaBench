#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uintmax_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_2__* samples; int /*<<< orphan*/  value; int /*<<< orphan*/  updates; } ;
typedef  TYPE_1__ input_rate_t ;
struct TYPE_6__ {scalar_t__ date; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(input_rate_t *counter, uintmax_t val)
{
    FUNC2(&counter->lock);
    counter->updates++;
    counter->value += val;

    /* Ignore samples within a second of another */
    vlc_tick_t now = FUNC4();
    if (counter->samples[0].date != VLC_TICK_INVALID
     && (now - counter->samples[0].date) < FUNC0(1))
    {
        FUNC3(&counter->lock);
        return;
    }

    FUNC1(counter->samples + 1, counter->samples,
           sizeof (counter->samples[0]));

    counter->samples[0].value = counter->value;
    counter->samples[0].date = now;
    FUNC3(&counter->lock);
}