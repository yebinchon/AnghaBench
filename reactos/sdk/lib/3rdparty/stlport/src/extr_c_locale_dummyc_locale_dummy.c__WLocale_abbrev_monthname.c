
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_time {int dummy; } ;


 int const** abbrev_wmonthname ;

const wchar_t * _WLocale_abbrev_monthname(struct _Locale_time * ltime, int n,
                                          wchar_t* buf, size_t bufSize)
{ return abbrev_wmonthname[n]; }
