
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_monetary {int dummy; } ;


 int _Locale_currency_symbol (struct _Locale_monetary*) ;
 int const* _ToWChar (int ,int *,size_t) ;

const wchar_t *_WLocale_currency_symbol(struct _Locale_monetary *__loc, wchar_t *buf, size_t bufSize)
{ return _ToWChar(_Locale_currency_symbol(__loc), buf, bufSize); }
