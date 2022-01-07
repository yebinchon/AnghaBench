
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_lcid_t ;


 char* __Extract_locale_name (char const*,char const*,char*) ;
 char const* __TranslateToSystem (char const*,char*,int *,int*) ;

__attribute__((used)) static char const* _Locale_extract_category_name(const char* name, const char* category, char* buf,
                                                 _Locale_lcid_t* hint, int *__err_code) {
  const char* cname = __Extract_locale_name(name, category, buf);
  if (cname == 0 || (cname[0] == 'C' && cname[1] == 0)) {
    return cname;
  }
  return __TranslateToSystem(cname, buf, hint, __err_code);
}
