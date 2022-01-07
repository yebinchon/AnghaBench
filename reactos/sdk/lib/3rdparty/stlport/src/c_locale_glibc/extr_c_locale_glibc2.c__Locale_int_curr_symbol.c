
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int INT_CURR_SYMBOL ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_int_curr_symbol(struct _Locale_monetary *__loc)
{
  return nl_langinfo_l(INT_CURR_SYMBOL, (locale_t)__loc);
}
