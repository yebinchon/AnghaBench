
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int __time64_t ;


 int MAX_32BIT_TIME ;
 int mktime_worker (struct tm*,int) ;

time_t
_mkgmtime(struct tm *ptm)
{
    __time64_t time = mktime_worker(ptm, 1);
    return (time_t)((time > MAX_32BIT_TIME) ? -1 : time);
}
