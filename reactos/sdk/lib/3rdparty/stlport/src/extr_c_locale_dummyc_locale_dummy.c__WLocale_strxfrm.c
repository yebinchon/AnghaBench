
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct _Locale_collate {int dummy; } ;


 int _STLP_WCSNCPY (scalar_t__*,size_t,scalar_t__ const*,size_t) ;

size_t _WLocale_strxfrm(struct _Locale_collate* lcol,
                        wchar_t* dest, size_t dest_n,
                        const wchar_t* src, size_t src_n) {
  if (dest != 0) {
    _STLP_WCSNCPY(dest, dest_n, src, dest_n - 1); dest[dest_n - 1] = 0;
  }
  return src_n;
}
