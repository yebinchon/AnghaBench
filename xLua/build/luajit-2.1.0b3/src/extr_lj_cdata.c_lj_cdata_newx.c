
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L; } ;
typedef int GCcdata ;
typedef int CTypeID ;
typedef TYPE_1__ CTState ;
typedef int CTSize ;
typedef int CTInfo ;


 int CTF_VLA ;
 scalar_t__ CT_MEMALIGN ;
 scalar_t__ ctype_align (int) ;
 int * lj_cdata_new (TYPE_1__*,int ,int ) ;
 int * lj_cdata_newv (int ,int ,int ,scalar_t__) ;

GCcdata *lj_cdata_newx(CTState *cts, CTypeID id, CTSize sz, CTInfo info)
{
  if (!(info & CTF_VLA) && ctype_align(info) <= CT_MEMALIGN)
    return lj_cdata_new(cts, id, sz);
  else
    return lj_cdata_newv(cts->L, id, sz, ctype_align(info));
}
