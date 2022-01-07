
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int P_CS_PRECEDES ;
 int* nl_langinfo_l (int ,int ) ;

int _Locale_p_cs_precedes(struct _Locale_monetary *__loc)
{
  return *(nl_langinfo_l(P_CS_PRECEDES, (locale_t)__loc));
}
