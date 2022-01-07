
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ lc; int cp; } ;
typedef TYPE_2__ _Locale_collate_t ;


 size_t INT_MAX ;
 int LCMAP_SORTKEY ;
 int LCMapStringA (int ,int ,char const*,int,char*,int) ;
 int _STLP_STRNCPY (char*,size_t,char const*,size_t) ;
 char* __ConvertToCP (scalar_t__,scalar_t__,char const*,size_t,size_t*) ;
 scalar_t__ __GetDefaultCP (int ) ;
 scalar_t__ atoi (int ) ;
 int free (char*) ;

size_t _Locale_strxfrm(_Locale_collate_t* lcol,
                       char* dst, size_t dst_size,
                       const char* src, size_t src_size) {
  int result;




  if (src_size > INT_MAX) {
    if (dst != 0) {
      _STLP_STRNCPY(dst, dst_size, src, src_size);
    }
    return src_size;
  }
  if (dst_size > INT_MAX) {

    dst_size = INT_MAX;
  }

  if (__GetDefaultCP(lcol->lc.id) == atoi(lcol->cp))
    result = LCMapStringA(lcol->lc.id, LCMAP_SORTKEY, src, (int)src_size, dst, (int)dst_size);
  else {
    char *buf;
    size_t size;
    buf = __ConvertToCP(atoi(lcol->cp), __GetDefaultCP(lcol->lc.id), src, src_size, &size);

    result = LCMapStringA(lcol->lc.id, LCMAP_SORTKEY, buf, (int)size, dst, (int)dst_size);
    free(buf);
  }
  return result != 0 ? result - 1 : 0;
}
