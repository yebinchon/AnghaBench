
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _Locale_monetary {int dummy; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_3__ {char** __names; } ;


 int INT_FRAC_DIGITS ;
 size_t LC_MONETARY ;
 char* nl_langinfo_l (int ,TYPE_1__*) ;

char _Locale_int_frac_digits(struct _Locale_monetary *__loc)
{


  const char* lname = ((locale_t)__loc)->__names[LC_MONETARY];
  if (lname[0] == 'C' && lname[1] == 0)
    return 0;
  return *(nl_langinfo_l(INT_FRAC_DIGITS, (locale_t)__loc));
}
