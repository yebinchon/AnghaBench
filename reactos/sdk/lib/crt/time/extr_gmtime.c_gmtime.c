
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int __time64_t ;


 struct tm* _gmtime64 (int *) ;

struct tm *
gmtime(const time_t * ptime)
{
    __time64_t time64;

    if (!ptime)
        return ((void*)0);
    time64 = *ptime;
    return _gmtime64(&time64);
}
