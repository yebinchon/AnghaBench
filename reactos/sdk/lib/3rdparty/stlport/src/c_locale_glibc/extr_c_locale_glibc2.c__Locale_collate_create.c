
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_name_hint {int dummy; } ;
struct _Locale_collate {int dummy; } ;


 int LC_COLLATE_MASK ;
 int _STLP_LOC_UNKNOWN_NAME ;
 scalar_t__ newlocale (int ,char const*,int *) ;

struct _Locale_collate *_Locale_collate_create(const char *nm, struct _Locale_name_hint* hint,
                                               int *__err_code) {
  *__err_code = _STLP_LOC_UNKNOWN_NAME;
  return (struct _Locale_collate*)newlocale(LC_COLLATE_MASK, nm, ((void*)0));
}
