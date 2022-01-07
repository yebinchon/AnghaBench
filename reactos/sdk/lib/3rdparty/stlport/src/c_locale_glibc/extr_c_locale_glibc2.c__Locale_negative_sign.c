
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_monetary {int dummy; } ;
typedef int locale_t ;


 int NEGATIVE_SIGN ;
 char const* nl_langinfo_l (int ,int ) ;

const char *_Locale_negative_sign(struct _Locale_monetary *__loc)
{
  return nl_langinfo_l(NEGATIVE_SIGN, (locale_t)__loc);
}
