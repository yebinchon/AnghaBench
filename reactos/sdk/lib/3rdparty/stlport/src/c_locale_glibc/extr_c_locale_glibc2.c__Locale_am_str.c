
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_time {int dummy; } ;
typedef int locale_t ;


 int AM_STR ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_am_str(struct _Locale_time *__loc )
{
  return nl_langinfo_l(AM_STR, (locale_t)__loc);
}
