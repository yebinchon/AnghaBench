
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct _Locale_ctype {int dummy; } ;


 int towlower (int ) ;

wint_t _WLocale_tolower(struct _Locale_ctype *lctype, wint_t wc)
{ return towlower(wc); }
