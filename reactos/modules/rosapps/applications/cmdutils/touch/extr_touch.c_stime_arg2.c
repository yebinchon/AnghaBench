
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; void* tm_year; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;


 void* ATOI2 (char*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;

void
stime_arg2(char *arg, int year, time_t *tvp)
{
 struct tm *t;

 if ((t = localtime(&tvp[0])) == ((void*)0))
  err(1, "localtime");

 t->tm_mon = ATOI2(arg);
 --t->tm_mon;
 t->tm_mday = ATOI2(arg);
 t->tm_hour = ATOI2(arg);
 t->tm_min = ATOI2(arg);
 if (year)
  t->tm_year = ATOI2(arg);

 t->tm_isdst = -1;
 tvp[0] = tvp[1] = mktime(t);
 if (tvp[0] == -1)
  errx(1,
 "out of range or illegal time specification: MMDDhhmm[yy]");
}
