
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_name_hint {int dummy; } ;
struct _Locale_codecvt {int dummy; } ;


 int _STLP_LOC_NO_PLATFORM_SUPPORT ;

struct _Locale_codecvt *_Locale_codecvt_create(const char *nm, struct _Locale_name_hint* hint,
                                               int *__err_code) {

  if (nm[0] == 'C' && nm[1] == 0)
  { return (struct _Locale_codecvt*)0x01; }
  *__err_code = _STLP_LOC_NO_PLATFORM_SUPPORT; return 0;
}
