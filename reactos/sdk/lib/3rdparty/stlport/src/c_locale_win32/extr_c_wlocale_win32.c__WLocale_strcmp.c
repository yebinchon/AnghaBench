
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int _Locale_collate_t ;


 int CSTR_EQUAL ;
 int CSTR_LESS_THAN ;
 int _WLocale_strcmp_aux (int *,int const*,size_t,int const*,size_t) ;

int _WLocale_strcmp(_Locale_collate_t* lcol,
                    const wchar_t* s1, size_t n1,
                    const wchar_t* s2, size_t n2) {
  int result;
  result = _WLocale_strcmp_aux(lcol, s1, n1, s2, n2);
  return (result == CSTR_EQUAL) ? 0 : (result == CSTR_LESS_THAN) ? -1 : 1;
}
