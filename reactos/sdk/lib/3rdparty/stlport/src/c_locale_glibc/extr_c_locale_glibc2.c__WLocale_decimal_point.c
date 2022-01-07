
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_numeric {int dummy; } ;


 int _Locale_decimal_point (struct _Locale_numeric*) ;

wchar_t _WLocale_decimal_point(struct _Locale_numeric *__loc)
{ return (wchar_t)_Locale_decimal_point(__loc); }
