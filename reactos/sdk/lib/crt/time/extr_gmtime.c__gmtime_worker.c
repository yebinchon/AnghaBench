
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {unsigned int tm_year; int tm_isdst; unsigned int tm_yday; unsigned int tm_mon; int tm_mday; unsigned int tm_wday; unsigned int tm_hour; unsigned int tm_min; unsigned int tm_sec; } ;
typedef unsigned int __time64_t ;


 scalar_t__ DIFFDAYS ;
 unsigned int SECONDSPERDAY ;
 unsigned int SECONDSPERHOUR ;
 scalar_t__ _dstbias ;
 int dst_begin ;
 int dst_end ;
 unsigned int* g_lpmonthdays ;
 unsigned int* g_monthdays ;
 unsigned int leapdays_passed (unsigned int) ;
 unsigned int leapyears_passed (unsigned int) ;

struct tm *
_gmtime_worker(struct tm *ptm, __time64_t time, int do_dst)
{
    unsigned int days, daystoyear, dayinyear, leapdays, leapyears, years, month;
    unsigned int secondinday, secondinhour;
    unsigned int *padays;

    if (time < 0)
    {
        return 0;
    }


    days = (unsigned int)(time / SECONDSPERDAY);
    secondinday = time % SECONDSPERDAY;


    days += DIFFDAYS;


    leapdays = leapdays_passed(days);


    leapyears = leapyears_passed(days);


    if (leapdays > leapyears)
    {

        padays = g_lpmonthdays;
    }
    else
    {

        padays = g_monthdays;
    }


    years = (days - leapdays) / 365;
    ptm->tm_year = years - 299;


    daystoyear = years * 365 + leapyears;


    dayinyear = days - daystoyear;


    ptm->tm_isdst = 0;
    if (do_dst)
    {
        int yeartime = dayinyear * SECONDSPERDAY + secondinday ;
        if (yeartime >= dst_begin && yeartime <= dst_end)
        {
            time -= _dstbias;
            days = (unsigned int)(time / SECONDSPERDAY + DIFFDAYS);
            dayinyear = days - daystoyear;
            ptm->tm_isdst = 1;
        }
    }

    ptm->tm_yday = dayinyear;


    for (month = 0; dayinyear >= padays[month+1]; month++)
        ;


    ptm->tm_mon = month;
    ptm->tm_mday = 1 + dayinyear - padays[month];


    ptm->tm_wday = (days + 1) % 7;


    ptm->tm_hour = secondinday / SECONDSPERHOUR;
    secondinhour = secondinday % SECONDSPERHOUR;


    ptm->tm_min = secondinhour / 60;
    ptm->tm_sec = secondinhour % 60;

    return ptm;
}
