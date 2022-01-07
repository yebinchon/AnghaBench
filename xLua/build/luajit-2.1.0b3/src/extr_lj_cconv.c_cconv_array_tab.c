
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef int TValue ;
typedef int GCtab ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef scalar_t__ CTSize ;
typedef int CTInfo ;


 scalar_t__ CTSIZE_INVALID ;
 int cconv_err_initov (int *,TYPE_1__*) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int lj_cconv_ct_tv (int *,TYPE_1__*,int *,int *,int ) ;
 scalar_t__ lj_tab_getint (int *,scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ tvisnil (int *) ;

__attribute__((used)) static void cconv_array_tab(CTState *cts, CType *d,
       uint8_t *dp, GCtab *t, CTInfo flags)
{
  int32_t i;
  CType *dc = ctype_rawchild(cts, d);
  CTSize size = d->size, esize = dc->size, ofs = 0;
  for (i = 0; ; i++) {
    TValue *tv = (TValue *)lj_tab_getint(t, i);
    if (!tv || tvisnil(tv)) {
      if (i == 0) continue;
      break;
    }
    if (ofs >= size)
      cconv_err_initov(cts, d);
    lj_cconv_ct_tv(cts, dc, dp + ofs, tv, flags);
    ofs += esize;
  }
  if (size != CTSIZE_INVALID) {
    if (ofs == esize) {
      for (; ofs < size; ofs += esize) memcpy(dp + ofs, dp, esize);
    } else {
      memset(dp + ofs, 0, size - ofs);
    }
  }
}
