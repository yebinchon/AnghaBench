
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_6__ {int start; int stop; int repeat; struct TYPE_6__* next; } ;
struct TYPE_5__ {int utc; TYPE_2__ const* day; scalar_t__ end_of_month; } ;
typedef TYPE_1__ CalendarSpec ;
typedef TYPE_2__ CalendarComponent ;


 int DIV_ROUND_UP (int,int) ;
 int ENOENT ;
 int SWAP_TWO (int,int) ;
 int assert (int*) ;
 int find_end_of_month (struct tm*,int ,int) ;

__attribute__((used)) static int find_matching_component(const CalendarSpec *spec, const CalendarComponent *c,
                                   struct tm *tm, int *val) {
        const CalendarComponent *p = c;
        int start, stop, d = -1;
        bool d_set = 0;
        int r;

        assert(val);

        if (!c)
                return 0;

        while (c) {
                start = c->start;
                stop = c->stop;

                if (spec->end_of_month && p == spec->day) {
                        start = find_end_of_month(tm, spec->utc, start);
                        stop = find_end_of_month(tm, spec->utc, stop);

                        if (stop > 0)
                                SWAP_TWO(start, stop);
                }

                if (start >= *val) {

                        if (!d_set || start < d) {
                                d = start;
                                d_set = 1;
                        }

                } else if (c->repeat > 0) {
                        int k;

                        k = start + c->repeat * DIV_ROUND_UP(*val - start, c->repeat);

                        if ((!d_set || k < d) && (stop < 0 || k <= stop)) {
                                d = k;
                                d_set = 1;
                        }
                }

                c = c->next;
        }

        if (!d_set)
                return -ENOENT;

        r = *val != d;
        *val = d;
        return r;
}
