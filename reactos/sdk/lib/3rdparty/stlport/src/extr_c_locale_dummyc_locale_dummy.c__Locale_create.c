
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _STLP_LOC_NO_PLATFORM_SUPPORT ;

void* _Locale_create(const char* name, int *__err_code) {
  if (name[0] == 'C' && name[1] == 0)
  { return (void*)0x1; }
  *__err_code = _STLP_LOC_NO_PLATFORM_SUPPORT; return 0;
}
