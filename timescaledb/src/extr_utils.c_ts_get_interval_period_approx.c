
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int time; int day; scalar_t__ month; } ;
typedef TYPE_1__ Interval ;


 int DAYS_PER_MONTH ;
 int USECS_PER_DAY ;

int64
ts_get_interval_period_approx(Interval *interval)
{
 return interval->time +
     ((((int64) interval->month * DAYS_PER_MONTH) + interval->day) * USECS_PER_DAY);
}
