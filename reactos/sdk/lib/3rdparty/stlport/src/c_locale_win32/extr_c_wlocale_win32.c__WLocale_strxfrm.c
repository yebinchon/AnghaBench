
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_collate_t ;


 size_t INT_MAX ;
 int LCMAP_SORTKEY ;
 int LCMapStringW (int ,int ,unsigned char const*,int,unsigned char*,int) ;
 int _STLP_WCSNCPY (unsigned char*,size_t,unsigned char const*,size_t) ;

size_t _WLocale_strxfrm(_Locale_collate_t* lcol,
                        wchar_t* dst, size_t dst_size,
                        const wchar_t* src, size_t src_size) {
  int result, i;


  if (src_size > INT_MAX) {
    if (dst != 0) {
      _STLP_WCSNCPY(dst, dst_size, src, src_size);
    }
    return src_size;
  }
  if (dst_size > INT_MAX) {
    dst_size = INT_MAX;
  }
  result = LCMapStringW(lcol->lc.id, LCMAP_SORTKEY, src, (int)src_size, dst, (int)dst_size);
  if (result != 0 && dst != 0) {
    for (i = result - 1; i >= 0; --i) {
      dst[i] = ((unsigned char*)dst)[i];
    }
  }
  return result != 0 ? result - 1 : 0;
}
