
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;


 char const** abbrev_monthname ;

const char * _Locale_abbrev_monthname(struct _Locale_time * ltime, int n)
{ return abbrev_monthname[n]; }
