
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_numeric {int dummy; } ;
struct _Locale_name_hint {int dummy; } ;


 int LC_NUMERIC_MASK ;
 int _STLP_LOC_UNKNOWN_NAME ;
 scalar_t__ newlocale (int ,char const*,int *) ;

struct _Locale_numeric *_Locale_numeric_create(const char *nm, struct _Locale_name_hint* hint,
                                               int *__err_code) {
  *__err_code = _STLP_LOC_UNKNOWN_NAME;
  return (struct _Locale_numeric*)newlocale(LC_NUMERIC_MASK, nm, ((void*)0));
}
