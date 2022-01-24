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
struct tm {int dummy; } ;
struct TYPE_6__ {int start; int stop; int repeat; struct TYPE_6__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  utc; TYPE_2__ const* day; scalar_t__ end_of_month; } ;
typedef  TYPE_1__ CalendarSpec ;
typedef  TYPE_2__ CalendarComponent ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (struct tm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(const CalendarSpec *spec, const CalendarComponent *c,
                                   struct tm *tm, int *val) {
        const CalendarComponent *p = c;
        int start, stop, d = -1;
        bool d_set = false;
        int r;

        FUNC2(val);

        if (!c)
                return 0;

        while (c) {
                start = c->start;
                stop = c->stop;

                if (spec->end_of_month && p == spec->day) {
                        start = FUNC3(tm, spec->utc, start);
                        stop = FUNC3(tm, spec->utc, stop);

                        if (stop > 0)
                                FUNC1(start, stop);
                }

                if (start >= *val) {

                        if (!d_set || start < d) {
                                d = start;
                                d_set = true;
                        }

                } else if (c->repeat > 0) {
                        int k;

                        k = start + c->repeat * FUNC0(*val - start, c->repeat);

                        if ((!d_set || k < d) && (stop < 0 || k <= stop)) {
                                d = k;
                                d_set = true;
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