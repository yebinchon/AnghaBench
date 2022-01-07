
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_numeric {int dummy; } ;


 int _Locale_false (struct _Locale_numeric*) ;
 int const* _ToWChar (int ,int *,size_t) ;

const wchar_t *_WLocale_false(struct _Locale_numeric *__loc, wchar_t *buf, size_t bufSize)
{ return _ToWChar(_Locale_false(__loc), buf, bufSize); }
