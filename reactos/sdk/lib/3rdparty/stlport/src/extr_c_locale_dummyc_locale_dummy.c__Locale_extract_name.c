
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _C_name ;
 int _STLP_LOC_NO_PLATFORM_SUPPORT ;

__attribute__((used)) static char const* _Locale_extract_name(const char* name, int *__err_code) {

  if (name[0] == 0 ||
      (name[0] == 'C' && name[1] == 0))
  { return _C_name; }
  *__err_code = _STLP_LOC_NO_PLATFORM_SUPPORT; return 0;
}
