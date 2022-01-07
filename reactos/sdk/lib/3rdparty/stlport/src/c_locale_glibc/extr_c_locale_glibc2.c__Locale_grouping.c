
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_numeric {int dummy; } ;
typedef int locale_t ;


 int GROUPING ;
 scalar_t__ _Locale_thousands_sep (struct _Locale_numeric*) ;
 char const* _empty_str ;
 char const* nl_langinfo_l (int ,int ) ;

const char* _Locale_grouping(struct _Locale_numeric *__loc)
{
  return (_Locale_thousands_sep(__loc) != 0 ) ? (nl_langinfo_l(GROUPING, (locale_t)__loc)) : _empty_str;
}
