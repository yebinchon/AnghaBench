
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_lcid_t ;


 char const* _C_name ;
 char const* __TranslateToSystem (char const*,char*,int *,int*) ;

char const* _Locale_extract_messages_name(const char* cname, char* buf,
                                          _Locale_lcid_t* hint, int *__err_code) {
  if (cname[0] == 'L' && cname[1] == 'C' && cname[2] == '_') {
    return _C_name;
  }
  if (cname[0] == 'C' && cname[1] == 0) {
    return _C_name;
  }
  return __TranslateToSystem(cname, buf, hint, __err_code);
}
