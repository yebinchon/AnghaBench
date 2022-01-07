
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int MON_THOUSANDS_SEP ;
 char* nl_langinfo_l (int ,int ) ;

char _Locale_mon_thousands_sep(struct _Locale_monetary *__loc)
{
  return *(nl_langinfo_l(MON_THOUSANDS_SEP, (locale_t)__loc));
}
