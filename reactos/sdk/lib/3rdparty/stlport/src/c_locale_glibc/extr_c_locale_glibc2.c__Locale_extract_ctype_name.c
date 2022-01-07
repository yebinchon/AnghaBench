
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_name_hint {int dummy; } ;


 char const* __Extract_locale_name (char const*,char*,char*) ;

char const*_Locale_extract_ctype_name(const char *loc, char *buf,
                                      struct _Locale_name_hint* hint, int *__err_code)
{ return __Extract_locale_name( loc, "LC_CTYPE=", buf ); }
