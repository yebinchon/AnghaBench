
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {int info; int size; } ;
struct TYPE_12__ {TYPE_1__* stack; int attr; } ;
struct TYPE_11__ {int cts; } ;
struct TYPE_10__ {int info; int size; int next; int sib; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTSize ;
typedef int CTInfo ;
typedef TYPE_2__ CPState ;
typedef int CPDeclIdx ;
typedef TYPE_3__ CPDecl ;


 int ALIGN ;
 scalar_t__ CTALIGN (int) ;
 int CTA_ALIGN ;
 int CTA_QUAL ;
 int CTF_ALIGN ;
 int CTF_BOOL ;
 int CTF_FP ;
 int CTF_INSERT (int,int ,int) ;
 int CTF_QUAL ;
 scalar_t__ CTF_VECTOR ;
 int CTF_VOLATILE ;
 int CTINFO (int ,scalar_t__) ;
 int CTSIZE_INVALID ;
 int CT_ARRAY ;
 int LJ_ERR_FFI_INVSIZE ;
 int LJ_ERR_FFI_INVTYPE ;
 int cp_err (TYPE_2__*,int ) ;
 int ctype_align (int) ;
 int ctype_cid (int) ;
 TYPE_6__* ctype_get (int ,int) ;
 scalar_t__ ctype_isarray (int) ;
 scalar_t__ ctype_isattrib (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isfunc (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 scalar_t__ ctype_isref (int) ;
 scalar_t__ ctype_isrefarray (int) ;
 scalar_t__ ctype_isstruct (int) ;
 scalar_t__ ctype_istypedef (int) ;
 scalar_t__ ctype_isvltype (int) ;
 int ctype_isvoid (int) ;
 scalar_t__ ctype_isxattrib (int,int ) ;
 int ctype_msizeP (int ) ;
 TYPE_1__* ctype_raw (int ,int) ;
 int ctype_vsizeP (int ) ;
 int lj_ctype_intern (int ,int,int) ;
 int lj_ctype_new (int ,TYPE_1__**) ;
 int lj_fls (int) ;
 int lua_assert (int) ;

__attribute__((used)) static CTypeID cp_decl_intern(CPState *cp, CPDecl *decl)
{
  CTypeID id = 0;
  CPDeclIdx idx = 0;
  CTSize csize = CTSIZE_INVALID;
  CTSize cinfo = 0;
  do {
    CType *ct = &decl->stack[idx];
    CTInfo info = ct->info;
    CTInfo size = ct->size;

    idx = ct->next;
    if (ctype_istypedef(info)) {
      lua_assert(id == 0);
      id = ctype_cid(info);

      cinfo = ctype_get(cp->cts, id)->info;
      csize = ctype_get(cp->cts, id)->size;
      lua_assert(ctype_isstruct(cinfo) || ctype_isenum(cinfo));
    } else if (ctype_isfunc(info)) {
      CType *fct;
      CTypeID fid;
      CTypeID sib;
      if (id) {
 CType *refct = ctype_raw(cp->cts, id);

 if (ctype_isfunc(refct->info) || ctype_isrefarray(refct->info))
   cp_err(cp, LJ_ERR_FFI_INVTYPE);
      }

      while (idx) {
 CType *ctn = &decl->stack[idx];
 if (!ctype_isattrib(ctn->info)) break;
 idx = ctn->next;
      }
      sib = ct->sib;
      fid = lj_ctype_new(cp->cts, &fct);
      csize = CTSIZE_INVALID;
      fct->info = cinfo = info + id;
      fct->size = size;
      fct->sib = sib;
      id = fid;
    } else if (ctype_isattrib(info)) {
      if (ctype_isxattrib(info, CTA_QUAL))
 cinfo |= size;
      else if (ctype_isxattrib(info, CTA_ALIGN))
 CTF_INSERT(cinfo, ALIGN, size);
      id = lj_ctype_intern(cp->cts, info+id, size);

    } else {
      if (ctype_isnum(info)) {
 lua_assert(id == 0);
 if (!(info & CTF_BOOL)) {
   CTSize msize = ctype_msizeP(decl->attr);
   CTSize vsize = ctype_vsizeP(decl->attr);
   if (msize && (!(info & CTF_FP) || (msize == 4 || msize == 8))) {
     CTSize malign = lj_fls(msize);
     if (malign > 4) malign = 4;
     CTF_INSERT(info, ALIGN, malign);
     size = msize;
   }
   if (vsize) {
     CTSize esize = lj_fls(size);
     if (vsize >= esize) {

       id = lj_ctype_intern(cp->cts, info, size);

       size = (1u << vsize);
       if (vsize > 4) vsize = 4;
       if (ctype_align(info) > vsize) vsize = ctype_align(info);
       info = CTINFO(CT_ARRAY, (info & CTF_QUAL) + CTF_VECTOR +
          CTALIGN(vsize));
     }
   }
 }
      } else if (ctype_isptr(info)) {

 if (id && ctype_isref(ctype_raw(cp->cts, id)->info))
   cp_err(cp, LJ_ERR_FFI_INVTYPE);
 if (ctype_isref(info)) {
   info &= ~CTF_VOLATILE;

   while (idx) {
     CType *ctn = &decl->stack[idx];
     if (!ctype_isattrib(ctn->info)) break;
     idx = ctn->next;
   }
 }
      } else if (ctype_isarray(info)) {
 if (ct->sib == 0) {
   if (ctype_isref(cinfo))
     cp_err(cp, LJ_ERR_FFI_INVTYPE);

   if (ctype_isvltype(cinfo) || csize == CTSIZE_INVALID)
     cp_err(cp, LJ_ERR_FFI_INVSIZE);

   if (size != CTSIZE_INVALID) {
     uint64_t xsz = (uint64_t)size * csize;
     if (xsz >= 0x80000000u) cp_err(cp, LJ_ERR_FFI_INVSIZE);
     size = (CTSize)xsz;
   }
 }
 if ((cinfo & CTF_ALIGN) > (info & CTF_ALIGN))
   info = (info & ~CTF_ALIGN) | (cinfo & CTF_ALIGN);
 info |= (cinfo & CTF_QUAL);
      } else {
 lua_assert(ctype_isvoid(info));
      }
      csize = size;
      cinfo = info+id;
      id = lj_ctype_intern(cp->cts, info+id, size);
    }
  } while (idx);
  return id;
}
