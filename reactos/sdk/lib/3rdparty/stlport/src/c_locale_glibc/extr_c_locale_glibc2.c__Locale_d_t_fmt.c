
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;
typedef int locale_t ;


 int D_T_FMT ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_d_t_fmt(struct _Locale_time *__loc)
{
  return nl_langinfo_l(D_T_FMT, (locale_t)__loc);
}
