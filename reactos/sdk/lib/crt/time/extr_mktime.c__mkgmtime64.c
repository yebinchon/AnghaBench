
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int __time64_t ;


 int mktime_worker (struct tm*,int) ;

__time64_t
_mkgmtime64(struct tm *ptm)
{
    return mktime_worker(ptm, 1);
}
