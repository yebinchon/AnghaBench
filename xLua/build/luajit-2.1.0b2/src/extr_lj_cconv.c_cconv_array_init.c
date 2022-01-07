
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef int TValue ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef scalar_t__ CTSize ;


 int cconv_err_initov (int *,TYPE_1__*) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int lj_cconv_ct_tv (int *,TYPE_1__*,int *,int *,int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static void cconv_array_init(CTState *cts, CType *d, CTSize sz, uint8_t *dp,
        TValue *o, MSize len)
{
  CType *dc = ctype_rawchild(cts, d);
  CTSize ofs, esize = dc->size;
  MSize i;
  if (len*esize > sz)
    cconv_err_initov(cts, d);
  for (i = 0, ofs = 0; i < len; i++, ofs += esize)
    lj_cconv_ct_tv(cts, dc, dp + ofs, o + i, 0);
  if (ofs == esize) {
    for (; ofs < sz; ofs += esize) memcpy(dp + ofs, dp, esize);
  } else {
    memset(dp + ofs, 0, sz - ofs);
  }
}
