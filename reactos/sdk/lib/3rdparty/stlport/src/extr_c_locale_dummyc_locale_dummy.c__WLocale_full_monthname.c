
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_time {int dummy; } ;


 int const** full_wmonthname ;

const wchar_t * _WLocale_full_monthname(struct _Locale_time * ltime, int n,
                                        wchar_t* buf, size_t bufSize)
{ return full_wmonthname[n]; }
