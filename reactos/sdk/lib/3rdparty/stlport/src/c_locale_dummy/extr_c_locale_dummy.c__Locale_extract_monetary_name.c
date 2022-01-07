
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_name_hint {int dummy; } ;


 char const* _Locale_extract_name (char const*,int*) ;

char const* _Locale_extract_monetary_name(const char *name, char *buf,
                                          struct _Locale_name_hint* hint, int *__err_code)
{ return _Locale_extract_name(name, __err_code); }
