
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;


 char const** full_monthname ;

const char * _Locale_full_monthname(struct _Locale_time * ltime, int n)
{ return full_monthname[n]; }
