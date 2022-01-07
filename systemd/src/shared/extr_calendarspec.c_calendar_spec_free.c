
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int timezone; int microsecond; int minute; int hour; int day; int month; int year; } ;
typedef TYPE_1__ CalendarSpec ;


 int chain_free (int ) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

CalendarSpec* calendar_spec_free(CalendarSpec *c) {

        if (!c)
                return ((void*)0);

        chain_free(c->year);
        chain_free(c->month);
        chain_free(c->day);
        chain_free(c->hour);
        chain_free(c->minute);
        chain_free(c->microsecond);
        free(c->timezone);

        return mfree(c);
}
