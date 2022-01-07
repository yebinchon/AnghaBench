
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct _Locale_time {int dummy; } ;


 int _Locale_pm_str (struct _Locale_time*) ;
 int const* _ToWChar (int ,int *,size_t) ;

const wchar_t *_WLocale_pm_str(struct _Locale_time* __loc, wchar_t *buf, size_t bufSize)
{ return _ToWChar(_Locale_pm_str(__loc), buf, bufSize); }
