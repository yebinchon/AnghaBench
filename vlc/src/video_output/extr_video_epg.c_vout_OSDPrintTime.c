
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_min; int tm_hour; } ;


 scalar_t__ asprintf (char**,char*,int ,int ) ;
 int localtime_r (int *,struct tm*) ;

__attribute__((used)) static char * vout_OSDPrintTime(time_t t)
{
    char *psz;
    struct tm tms;
    localtime_r(&t, &tms);
    if(asprintf(&psz, "%2.2d:%2.2d", tms.tm_hour, tms.tm_min) < 0)
       psz = ((void*)0);
    return psz;
}
