
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t size; struct report_timer* data; } ;
typedef TYPE_2__ vec_report_timer ;
struct timer_state {TYPE_2__ vec; } ;
struct TYPE_3__ {int drop_frame; int frame_resolution; unsigned int frames; int seconds; unsigned int minutes; } ;
struct report_timer {TYPE_1__ tc; } ;


 int assert (int) ;

__attribute__((used)) static void
test_timers_assert_smpte_dropframe(struct timer_state *timer, unsigned minute,
                                   unsigned fps)
{
    assert(fps == 30 || fps == 60);
    assert(minute > 0);

    vec_report_timer *vec = &timer->vec;

    bool last_second_seen = 0, minute_seen = 0;
    for (size_t i = 1; i < vec->size; ++i)
    {
        struct report_timer *prev_report = &vec->data[i - 1];
        struct report_timer *report = &vec->data[i];

        assert(report->tc.drop_frame == 1);
        assert(report->tc.frame_resolution == 2);

        if (prev_report->tc.frames == fps - 1)
        {
            if (report->tc.seconds == 59)
            {

                assert(prev_report->tc.minutes == minute - 1);
                assert(prev_report->tc.seconds == 58);

                assert(report->tc.minutes == minute - 1);
                assert(report->tc.frames == 0);

                last_second_seen = 1;
            }
            else if (report->tc.seconds == 0)
            {



                assert(prev_report->tc.minutes == minute - 1);
                assert(prev_report->tc.seconds == 59);

                assert(report->tc.minutes == minute);
                if (minute % 10 == 0)
                    assert(report->tc.frames == 0);
                else
                    assert(report->tc.frames == (fps / 30 * 2) );

                minute_seen = 1;
            }

        }
        else if (prev_report->tc.minutes != 0 && prev_report->tc.seconds != 0
              && prev_report->tc.frames != 0)
            assert(report->tc.frames == prev_report->tc.frames + 1);
    }


    assert(last_second_seen && minute_seen);
}
