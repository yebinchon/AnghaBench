
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_numeric {int dummy; } ;
typedef int locale_t ;


 int YESSTR ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_true(struct _Locale_numeric *__loc)
{
  return nl_langinfo_l(YESSTR, (locale_t)__loc);
}
