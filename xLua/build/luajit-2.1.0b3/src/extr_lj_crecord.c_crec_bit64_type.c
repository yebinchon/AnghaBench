
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cTValue ;
struct TYPE_7__ {int ctypeid; } ;
struct TYPE_6__ {int info; int size; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTF_BOOL ;
 int CTF_FP ;
 int CTF_UNSIGNED ;
 int CTID_INT64 ;
 int CTID_UINT64 ;
 int CTINFO (int ,int) ;
 int CTMASK_NUM ;
 int CT_NUM ;
 TYPE_5__* cdataV (int *) ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 scalar_t__ ctype_isenum (int) ;
 TYPE_1__* lj_ctype_rawref (int *,int ) ;
 scalar_t__ tviscdata (int *) ;

__attribute__((used)) static CTypeID crec_bit64_type(CTState *cts, cTValue *tv)
{
  if (tviscdata(tv)) {
    CType *ct = lj_ctype_rawref(cts, cdataV(tv)->ctypeid);
    if (ctype_isenum(ct->info)) ct = ctype_child(cts, ct);
    if ((ct->info & (CTMASK_NUM|CTF_BOOL|CTF_FP|CTF_UNSIGNED)) ==
 CTINFO(CT_NUM, CTF_UNSIGNED) && ct->size == 8)
      return CTID_UINT64;
    return CTID_INT64;
  }
  return 0;
}
