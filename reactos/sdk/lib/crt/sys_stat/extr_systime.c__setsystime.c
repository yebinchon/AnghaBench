
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_3__ {unsigned int wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wDayOfWeek; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int SetLocalTime (TYPE_1__*) ;

unsigned int _setsystime(struct tm* tp, unsigned int ms)
{
    SYSTEMTIME Time;

    Time.wYear = tp->tm_year + 1900;
    Time.wMonth = tp->tm_mon + 1;
    Time.wDayOfWeek = tp->tm_wday;
    Time.wDay = tp->tm_mday;
    Time.wHour = tp->tm_hour;
    Time.wMinute = tp->tm_min;
    Time.wSecond = tp->tm_sec;
    Time.wMilliseconds = ms;

    if (!SetLocalTime(&Time))
        return -1;

    return 0;
}
