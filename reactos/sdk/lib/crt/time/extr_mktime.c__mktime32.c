
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int __time64_t ;
typedef int __time32_t ;


 int MAX_32BIT_TIME ;
 int mktime_worker (struct tm*,int ) ;

__time32_t
_mktime32(struct tm *ptm)
{
    __time64_t time = mktime_worker(ptm, 0);
    return (__time32_t)((time > MAX_32BIT_TIME) ? -1 : time);
}
