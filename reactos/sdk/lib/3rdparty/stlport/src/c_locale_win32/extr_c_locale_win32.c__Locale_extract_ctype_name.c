
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_lcid_t ;


 char const* _Locale_extract_category_name (char const*,char*,char*,int *,int*) ;

char const* _Locale_extract_ctype_name(const char* cname, char* buf,
                                       _Locale_lcid_t* hint, int *__err_code)
{ return _Locale_extract_category_name(cname, "LC_CTYPE", buf, hint, __err_code); }
