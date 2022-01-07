
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int N_SEP_BY_SPACE ;
 int* nl_langinfo_l (int ,int ) ;

int _Locale_n_sep_by_space(struct _Locale_monetary *__loc)
{
  return *(nl_langinfo_l(N_SEP_BY_SPACE, (locale_t)__loc));
}
