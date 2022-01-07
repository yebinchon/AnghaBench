
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int P_SEP_BY_SPACE ;
 int* nl_langinfo_l (int ,int ) ;

int _Locale_p_sep_by_space(struct _Locale_monetary *__loc)
{
  return *(nl_langinfo_l(P_SEP_BY_SPACE, (locale_t)__loc));
}
