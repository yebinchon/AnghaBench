
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int utc; int weekdays_bits; int end_of_month; int microsecond; int minute; int hour; int day; int month; int year; int timezone; } ;
typedef TYPE_1__ CalendarSpec ;


 int BITS_WEEKDAYS ;
 int assert (TYPE_1__*) ;
 int fix_year (int ) ;
 int mfree (int ) ;
 int normalize_chain (int *) ;
 scalar_t__ streq_ptr (int ,char*) ;

int calendar_spec_normalize(CalendarSpec *c) {
        assert(c);

        if (streq_ptr(c->timezone, "UTC")) {
                c->utc = 1;
                c->timezone = mfree(c->timezone);
        }

        if (c->weekdays_bits <= 0 || c->weekdays_bits >= BITS_WEEKDAYS)
                c->weekdays_bits = -1;

        if (c->end_of_month && !c->day)
                c->end_of_month = 0;

        fix_year(c->year);

        normalize_chain(&c->year);
        normalize_chain(&c->month);
        normalize_chain(&c->day);
        normalize_chain(&c->hour);
        normalize_chain(&c->minute);
        normalize_chain(&c->microsecond);

        return 0;
}
