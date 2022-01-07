
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _Locale_monetary {int dummy; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_2__ {char const** __names; } ;


 size_t LC_MONETARY ;

char const*_Locale_monetary_name( const struct _Locale_monetary *__loc, char *buf )
{
  return ((locale_t)__loc)->__names[LC_MONETARY];
}
