
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct _Locale_ctype {int dummy; } ;
typedef int locale_t ;


 int towupper_l (int ,int ) ;

wint_t _WLocale_toupper( struct _Locale_ctype *__loc, wint_t c )
{
  return towupper_l( c, ((locale_t)__loc) );
}
