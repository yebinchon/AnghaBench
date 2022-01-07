
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int info; } ;
typedef int TValue ;
typedef int MSize ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;


 int cconv_array_init (int *,TYPE_1__*,int ,int *,int *,int) ;
 int cconv_err_initov (int *,TYPE_1__*) ;
 int cconv_struct_init (int *,TYPE_1__*,int ,int *,int *,int) ;
 scalar_t__ ctype_isarray (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 int lj_cconv_ct_tv (int *,TYPE_1__*,int *,int *,int ) ;
 int lj_cconv_multi_init (int *,TYPE_1__*,int *) ;
 int memset (int *,int ,int ) ;

void lj_cconv_ct_init(CTState *cts, CType *d, CTSize sz,
        uint8_t *dp, TValue *o, MSize len)
{
  if (len == 0)
    memset(dp, 0, sz);
  else if (len == 1 && !lj_cconv_multi_init(cts, d, o))
    lj_cconv_ct_tv(cts, d, dp, o, 0);
  else if (ctype_isarray(d->info))
    cconv_array_init(cts, d, sz, dp, o, len);
  else if (ctype_isstruct(d->info))
    cconv_struct_init(cts, d, sz, dp, o, len);
  else
    cconv_err_initov(cts, d);
}
