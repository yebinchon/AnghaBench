
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef scalar_t__ lua_Number ;
typedef int int32_t ;
typedef int cTValue ;
struct TYPE_37__ {int L; } ;
struct TYPE_36__ {int info; int size; } ;
struct TYPE_35__ {scalar_t__ ctypeid; } ;
struct TYPE_34__ {int len; } ;
typedef TYPE_1__ GCstr ;
typedef TYPE_2__ GCcdata ;
typedef scalar_t__ CTypeID ;
typedef TYPE_3__ CType ;
typedef TYPE_4__ CTState ;
typedef scalar_t__ CTSize ;
typedef int CTInfo ;


 scalar_t__ CTA_QUAL ;
 int CTF_COMPLEX ;
 int CTF_CONST ;
 int CTF_VECTOR ;
 scalar_t__ CTID_CTYPEID ;
 scalar_t__ CTID_INT_PSZ ;
 scalar_t__ CTSIZE_INVALID ;
 int CTSIZE_PTR ;
 scalar_t__ LJ_64 ;
 int LJ_ERR_FFI_INVSIZE ;
 TYPE_2__* cdataV (int *) ;
 scalar_t__ cdata_getptr (int *,int) ;
 scalar_t__ cdataptr (TYPE_2__*) ;
 scalar_t__ ctype_attrib (int) ;
 TYPE_3__* ctype_child (TYPE_4__*,TYPE_3__*) ;
 int ctype_cid (int) ;
 TYPE_3__* ctype_get (TYPE_4__*,scalar_t__) ;
 scalar_t__ ctype_isattrib (int) ;
 scalar_t__ ctype_iscomplex (int) ;
 scalar_t__ ctype_isconstval (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isinteger (int) ;
 scalar_t__ ctype_ispointer (int) ;
 scalar_t__ ctype_isptr (int) ;
 scalar_t__ ctype_isref (int) ;
 scalar_t__ ctype_isstruct (int) ;
 TYPE_3__* ctype_raw (TYPE_4__*,scalar_t__) ;
 TYPE_3__* ctype_rawchild (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ intV (int *) ;
 int lj_cconv_ct_ct (TYPE_4__*,TYPE_3__*,TYPE_3__*,int *,scalar_t__,int ) ;
 TYPE_3__* lj_ctype_getfield (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*) ;
 TYPE_3__* lj_ctype_getfieldq (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*,int*) ;
 scalar_t__ lj_ctype_size (TYPE_4__*,int ) ;
 int lj_err_caller (int ,int ) ;
 scalar_t__ lj_num2int (scalar_t__ volatile) ;
 int lua_assert (int) ;
 scalar_t__ numV (int *) ;
 TYPE_1__* strV (int *) ;
 char* strdata (TYPE_1__*) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisstr (int *) ;

CType *lj_cdata_index(CTState *cts, GCcdata *cd, cTValue *key, uint8_t **pp,
        CTInfo *qual)
{
  uint8_t *p = (uint8_t *)cdataptr(cd);
  CType *ct = ctype_get(cts, cd->ctypeid);
  ptrdiff_t idx;


  if (ctype_isref(ct->info)) {
    lua_assert(ct->size == CTSIZE_PTR);
    p = *(uint8_t **)p;
    ct = ctype_child(cts, ct);
  }

collect_attrib:

  while (ctype_isattrib(ct->info)) {
    if (ctype_attrib(ct->info) == CTA_QUAL) *qual |= ct->size;
    ct = ctype_child(cts, ct);
  }
  lua_assert(!ctype_isref(ct->info));

  if (tvisint(key)) {
    idx = (ptrdiff_t)intV(key);
    goto integer_key;
  } else if (tvisnum(key)) {




    lua_Number n = numV(key);
    idx = LJ_64 ? (ptrdiff_t)n : (ptrdiff_t)lj_num2int(n);
  integer_key:
    if (ctype_ispointer(ct->info)) {
      CTSize sz = lj_ctype_size(cts, ctype_cid(ct->info));
      if (sz == CTSIZE_INVALID)
 lj_err_caller(cts->L, LJ_ERR_FFI_INVSIZE);
      if (ctype_isptr(ct->info)) {
 p = (uint8_t *)cdata_getptr(p, ct->size);
      } else if ((ct->info & (CTF_VECTOR|CTF_COMPLEX))) {
 if ((ct->info & CTF_COMPLEX)) idx &= 1;
 *qual |= CTF_CONST;
      }
      *pp = p + idx*(int32_t)sz;
      return ct;
    }
  } else if (tviscdata(key)) {
    GCcdata *cdk = cdataV(key);
    CType *ctk = ctype_raw(cts, cdk->ctypeid);
    if (ctype_isenum(ctk->info)) ctk = ctype_child(cts, ctk);
    if (ctype_isinteger(ctk->info)) {
      lj_cconv_ct_ct(cts, ctype_get(cts, CTID_INT_PSZ), ctk,
       (uint8_t *)&idx, cdataptr(cdk), 0);
      goto integer_key;
    }
  } else if (tvisstr(key)) {
    GCstr *name = strV(key);
    if (ctype_isstruct(ct->info)) {
      CTSize ofs;
      CType *fct = lj_ctype_getfieldq(cts, ct, name, &ofs, qual);
      if (fct) {
 *pp = p + ofs;
 return fct;
      }
    } else if (ctype_iscomplex(ct->info)) {
      if (name->len == 2) {
 *qual |= CTF_CONST;
 if (strdata(name)[0] == 'r' && strdata(name)[1] == 'e') {
   *pp = p;
   return ct;
 } else if (strdata(name)[0] == 'i' && strdata(name)[1] == 'm') {
   *pp = p + (ct->size >> 1);
   return ct;
 }
      }
    } else if (cd->ctypeid == CTID_CTYPEID) {

      CType *sct = ctype_raw(cts, *(CTypeID *)p);
      if (ctype_isptr(sct->info))
 sct = ctype_rawchild(cts, sct);
      if (ctype_isstruct(sct->info)) {
 CTSize ofs;
 CType *fct = lj_ctype_getfield(cts, sct, name, &ofs);
 if (fct && ctype_isconstval(fct->info))
   return fct;
      }
      ct = sct;
    }
  }
  if (ctype_isptr(ct->info)) {
    if (ctype_isstruct(ctype_rawchild(cts, ct)->info)) {
      p = (uint8_t *)cdata_getptr(p, ct->size);
      ct = ctype_child(cts, ct);
      goto collect_attrib;
    }
  }
  *qual |= 1;
  return ct;
}
