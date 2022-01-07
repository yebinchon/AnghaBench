
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int size; int info; scalar_t__ sib; } ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;


 int CTSIZE_INVALID ;
 scalar_t__ CT_FIELD ;
 scalar_t__ ctype_cid (int ) ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 int ctype_hassize (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 int ctype_isvlarray (int ) ;
 TYPE_1__* ctype_raw (int *,scalar_t__) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 scalar_t__ ctype_type (int ) ;
 int lua_assert (int ) ;

CTSize lj_ctype_vlsize(CTState *cts, CType *ct, CTSize nelem)
{
  uint64_t xsz = 0;
  if (ctype_isstruct(ct->info)) {
    CTypeID arrid = 0, fid = ct->sib;
    xsz = ct->size;
    while (fid) {
      CType *ctf = ctype_get(cts, fid);
      if (ctype_type(ctf->info) == CT_FIELD)
 arrid = ctype_cid(ctf->info);
      fid = ctf->sib;
    }
    ct = ctype_raw(cts, arrid);
  }
  lua_assert(ctype_isvlarray(ct->info));
  ct = ctype_rawchild(cts, ct);
  lua_assert(ctype_hassize(ct->info));

  xsz += (uint64_t)ct->size * nelem;
  return xsz < 0x80000000u ? (CTSize)xsz : CTSIZE_INVALID;
}
