
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_year; int tm_mon; int tm_isdst; int tm_yday; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; } ;
struct TYPE_3__ {int wYear; int wMonth; unsigned int wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wDayOfWeek; } ;
typedef int TIME_ZONE_INFORMATION ;
typedef TYPE_1__ SYSTEMTIME ;
typedef scalar_t__ DWORD ;


 int GetLocalTime (TYPE_1__*) ;
 scalar_t__ GetTimeZoneInformation (int *) ;
 scalar_t__ TIME_ZONE_ID_DAYLIGHT ;
 scalar_t__* month ;

unsigned int _getsystime(struct tm* tp)
{
    SYSTEMTIME Time;
    int i;
    DWORD TimeZoneId;
    TIME_ZONE_INFORMATION TimeZoneInformation;

    GetLocalTime(&Time);

    tp->tm_year = Time.wYear - 1900;
    tp->tm_mon = Time.wMonth - 1;
    tp->tm_wday = Time.wDayOfWeek;
    tp->tm_mday = Time.wDay;
    tp->tm_hour = Time.wHour;
    tp->tm_min = Time.wMinute;
    tp->tm_sec = Time.wSecond;

    tp->tm_isdst = -1;

    TimeZoneId = GetTimeZoneInformation(&TimeZoneInformation);
    if (TimeZoneId == TIME_ZONE_ID_DAYLIGHT){
      tp->tm_isdst = 1;
    }
    else
      tp->tm_isdst = 0;

    if (tp->tm_year % 4 == 0) {
        if (tp->tm_year % 100 != 0)
            tp->tm_yday = 1;
        else if ((tp->tm_year-100) % 1000 == 0)
            tp->tm_yday = 1;
    }

    for (i = 0; i <= tp->tm_mon; i++)
        tp->tm_yday += month[i];

    return Time.wMilliseconds;
}
