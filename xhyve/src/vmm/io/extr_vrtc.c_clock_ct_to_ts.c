
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;


 int EINVAL ;
 int POSIX_BASE_YEAR ;
 scalar_t__ days_in_month (int,int) ;
 scalar_t__ days_in_year (int) ;

__attribute__((used)) static int
clock_ct_to_ts(struct clocktime *ct, struct timespec *ts)
{
 int i, year, days;

 year = ct->year;


 if (ct->mon < 1 || ct->mon > 12 || ct->day < 1 ||
     ct->day > days_in_month(year, ct->mon) ||
     ct->hour > 23 || ct->min > 59 || ct->sec > 59 ||
     (year > 2037 && sizeof(time_t) == 4)) {
  return (EINVAL);
 }





 days = 0;
 for (i = POSIX_BASE_YEAR; i < year; i++)
  days += days_in_year(i);


 for (i = 1; i < ct->mon; i++)
    days += days_in_month(year, i);
 days += (ct->day - 1);

 ts->tv_sec = (((time_t)days * 24 + ct->hour) * 60 + ct->min) * 60 +
     ct->sec;
 ts->tv_nsec = ct->nsec;

 return (0);
}
