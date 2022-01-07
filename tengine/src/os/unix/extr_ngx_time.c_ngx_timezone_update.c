
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 scalar_t__ getenv (char*) ;
 struct tm* localtime (int *) ;
 int putenv (char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int ) ;
 int tzset () ;
 int unsetenv (char*) ;

void
ngx_timezone_update(void)
{
}
