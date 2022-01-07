
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int MON_GROUPING ;
 scalar_t__ _Locale_mon_thousands_sep (struct _Locale_monetary*) ;
 char const* _empty_str ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_mon_grouping(struct _Locale_monetary *__loc)
{
  return (_Locale_mon_thousands_sep( __loc ) != 0 ) ? nl_langinfo_l(MON_GROUPING, (locale_t)__loc) : _empty_str;
}
