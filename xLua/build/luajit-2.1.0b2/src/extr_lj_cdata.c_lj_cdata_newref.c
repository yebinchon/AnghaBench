
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GCcdata ;
typedef int CTypeID ;
typedef int CTState ;


 int CTINFO_REF (int ) ;
 int CTSIZE_PTR ;
 scalar_t__ cdataptr (int *) ;
 int * lj_cdata_new (int *,int ,int ) ;
 int lj_ctype_intern (int *,int ,int ) ;

GCcdata *lj_cdata_newref(CTState *cts, const void *p, CTypeID id)
{
  CTypeID refid = lj_ctype_intern(cts, CTINFO_REF(id), CTSIZE_PTR);
  GCcdata *cd = lj_cdata_new(cts, refid, CTSIZE_PTR);
  *(const void **)cdataptr(cd) = p;
  return cd;
}
