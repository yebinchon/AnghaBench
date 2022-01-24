#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; struct report_timer* data; } ;
typedef  TYPE_2__ vec_report_timer ;
struct timer_state {TYPE_2__ vec; } ;
struct TYPE_3__ {int drop_frame; int frame_resolution; unsigned int frames; int seconds; unsigned int minutes; } ;
struct report_timer {TYPE_1__ tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(struct timer_state *timer, unsigned minute,
                                   unsigned fps)
{
    FUNC0(fps == 30 || fps == 60);
    FUNC0(minute > 0);

    vec_report_timer *vec = &timer->vec;

    bool last_second_seen = false, minute_seen = false;
    for (size_t i = 1; i < vec->size; ++i)
    {
        struct report_timer *prev_report = &vec->data[i - 1];
        struct report_timer *report = &vec->data[i];

        FUNC0(report->tc.drop_frame == true);
        FUNC0(report->tc.frame_resolution == 2);

        if (prev_report->tc.frames == fps - 1)
        {
            if (report->tc.seconds == 59)
            {
                /* Last second before the new minute */
                FUNC0(prev_report->tc.minutes == minute - 1);
                FUNC0(prev_report->tc.seconds == 58);

                FUNC0(report->tc.minutes == minute - 1);
                FUNC0(report->tc.frames == 0);

                last_second_seen = true;
            }
            else if (report->tc.seconds == 0)
            {
                /* The minute just reached, check that 2 or 4 frames are
                 * dropped every minutes, except every 10 minutes */

                FUNC0(prev_report->tc.minutes == minute - 1);
                FUNC0(prev_report->tc.seconds == 59);

                FUNC0(report->tc.minutes == minute);
                if (minute % 10 == 0)
                    FUNC0(report->tc.frames == 0);
                else
                    FUNC0(report->tc.frames == (fps / 30 * 2) /* drop frame */);

                minute_seen = true;
            }

        }
        else if (prev_report->tc.minutes != 0 && prev_report->tc.seconds != 0
              && prev_report->tc.frames != 0)
            FUNC0(report->tc.frames == prev_report->tc.frames + 1);
    }

    /* Assert that we've seen the full last second and the new minute */
    FUNC0(last_second_seen && minute_seen);
}