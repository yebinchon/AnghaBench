
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_sec; } ;


 void* ATOI2 (char*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

void
stime_arg1(char *arg, time_t *tvp)
{
 struct tm *t;
 int yearset;
 char *p;

 if ((t = localtime(&tvp[0])) == ((void*)0))
  err(1, "localtime");

 if ((p = strchr(arg, '.')) == ((void*)0))
  t->tm_sec = 0;
 else {
  if (strlen(p + 1) != 2)
   goto terr;
  *p++ = '\0';
  t->tm_sec = ATOI2(p);
 }

 yearset = 0;
 switch(strlen(arg)) {
 case 12:
  t->tm_year = ATOI2(arg);
  t->tm_year *= 1000;
  yearset = 1;

 case 10:
  if (yearset) {
   yearset = ATOI2(arg);
   t->tm_year += yearset;
  } else {
   yearset = ATOI2(arg);
   if (yearset < 69)
    t->tm_year = yearset + 2000;
   else
    t->tm_year = yearset + 1900;
  }
  t->tm_year -= 1900;

 case 8:
  t->tm_mon = ATOI2(arg);
  --t->tm_mon;
  t->tm_mday = ATOI2(arg);
  t->tm_hour = ATOI2(arg);
  t->tm_min = ATOI2(arg);
  break;
 default:
  goto terr;
 }

 t->tm_isdst = -1;
 tvp[0] = tvp[1] = mktime(t);
 if (tvp[0] == -1)
terr: errx(1,
 "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
}
