
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_numeric {int dummy; } ;
typedef int locale_t ;


 int THOUSEP ;
 char* nl_langinfo_l (int ,int ) ;

char _Locale_thousands_sep(struct _Locale_numeric *__loc)
{
  return *(nl_langinfo_l(THOUSEP, (locale_t)__loc));
}
