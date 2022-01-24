#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int vlc_tick_t ;
struct TYPE_8__ {size_t size; struct report_timer* data; } ;
typedef  TYPE_3__ vec_report_timer ;
struct timer_state {TYPE_3__ vec; } ;
struct TYPE_6__ {scalar_t__ frames; size_t seconds; int drop_frame; unsigned int frame_resolution; } ;
struct report_timer {scalar_t__ type; TYPE_1__ tc; } ;
struct TYPE_7__ {int frames; } ;
struct TYPE_9__ {TYPE_2__ tc; } ;

/* Variables and functions */
 scalar_t__ REPORT_TIMER_TC ; 
 TYPE_4__ FUNC0 (TYPE_3__*) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct timer_state *timer,
                         vlc_tick_t duration, unsigned fps, bool drop_frame,
                         unsigned frame_resolution)
{
    /* This test doesn't support drop frame handling */
    FUNC2(duration < FUNC1(60));

    vec_report_timer *vec = &timer->vec;

    /* Check that we didn't miss any update points */
    FUNC2(vec->data[0].tc.frames == 0);
    for (size_t i = 0; i < vec->size; ++i)
    {
        struct report_timer *prev_report = i > 0 ? &vec->data[i - 1] : NULL;
        struct report_timer *report = &vec->data[i];

        FUNC2(report->tc.seconds == (i / fps));
        if (prev_report)
        {
            if (i % fps == 0)
            {
                FUNC2(prev_report->tc.frames == fps - 1);
                FUNC2(report->tc.frames == 0);
            }
            else
                FUNC2(report->tc.frames == prev_report->tc.frames + 1);
        }

        FUNC2(report->type == REPORT_TIMER_TC);
        FUNC2(report->tc.drop_frame == drop_frame);
        FUNC2(report->tc.frame_resolution == frame_resolution);
    }
    FUNC2(FUNC0(vec).tc.frames + 1 == fps * duration / FUNC1(1));
}