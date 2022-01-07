
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;


 char const** full_dayname ;

const char * _Locale_full_dayofweek(struct _Locale_time * ltime, int n)
{ return full_dayname[n]; }
