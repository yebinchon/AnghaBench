
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_year; scalar_t__ tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {scalar_t__ year; scalar_t__ month; int day; int hour; int minute; int second; } ;
typedef TYPE_1__* PDATE_AND_TIME ;


 struct tm* gmtime (int *) ;

__attribute__((used)) static void convert_date_and_time(PDATE_AND_TIME dt, time_t *time)
{
    struct tm *timedef;
    timedef = gmtime(time);

    dt->second = timedef->tm_sec;
    dt->minute = timedef->tm_min;
    dt->hour = timedef->tm_hour;
    dt->day = timedef->tm_mday;
    dt->month = timedef->tm_mon + 1;
    dt->year = timedef->tm_year + 1900;
}
