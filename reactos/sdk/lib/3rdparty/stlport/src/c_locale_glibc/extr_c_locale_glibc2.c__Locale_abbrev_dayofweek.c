
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;
typedef int locale_t ;


 scalar_t__ ABDAY_1 ;
 char const* nl_langinfo_l (scalar_t__,int ) ;

const char *_Locale_abbrev_dayofweek(struct _Locale_time *__loc, int _d )
{
  return nl_langinfo_l(ABDAY_1 + _d, (locale_t)__loc);
}
