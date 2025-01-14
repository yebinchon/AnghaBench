
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 scalar_t__ is_leap_year (int) ;

time_t timegm(struct tm *tm)
{
    static const unsigned ydays[12 + 1] = {
        0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
    };

    if (tm->tm_year < 70
     || tm->tm_mon < 0 || tm->tm_mon > 11
     || tm->tm_mday < 1 || tm->tm_mday > 31
     || tm->tm_hour < 0 || tm->tm_hour > 23
     || tm->tm_min < 0 || tm->tm_min > 59
     || tm->tm_sec < 0 || tm->tm_sec > 60 )
        return -1;


    unsigned t = 365 * (tm->tm_year - 70)
                 + ydays[tm->tm_mon] + (tm->tm_mday - 1);


    for (int i = 70; i < tm->tm_year; i++)
        t += is_leap_year(1900 + i);

    if (tm->tm_mon > 1)
        t += is_leap_year(1900 + tm->tm_year);

    t *= 24;
    t += tm->tm_hour;
    t *= 60;
    t += tm->tm_min;
    t *= 60;
    t += tm->tm_sec;
    return t;
}
