
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info; int size; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;
typedef int CTInfo ;


 int CTALIGN (int) ;
 int CTA_ALIGN ;
 int CTA_QUAL ;
 int CTFP_ALIGNED ;
 int CTF_ALIGN ;
 int CTMASK_CID ;
 int CTSIZE_INVALID ;
 int ctype_cid (int) ;
 TYPE_1__* ctype_get (int *,int ) ;
 scalar_t__ ctype_hassize (int) ;
 scalar_t__ ctype_isattrib (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isfunc (int) ;
 scalar_t__ ctype_isxattrib (int,int ) ;
 int lua_assert (int) ;

CTInfo lj_ctype_info(CTState *cts, CTypeID id, CTSize *szp)
{
  CTInfo qual = 0;
  CType *ct = ctype_get(cts, id);
  for (;;) {
    CTInfo info = ct->info;
    if (ctype_isenum(info)) {

    } else if (ctype_isattrib(info)) {
      if (ctype_isxattrib(info, CTA_QUAL))
 qual |= ct->size;
      else if (ctype_isxattrib(info, CTA_ALIGN) && !(qual & CTFP_ALIGNED))
 qual |= CTFP_ALIGNED + CTALIGN(ct->size);
    } else {
      if (!(qual & CTFP_ALIGNED)) qual |= (info & CTF_ALIGN);
      qual |= (info & ~(CTF_ALIGN|CTMASK_CID));
      lua_assert(ctype_hassize(info) || ctype_isfunc(info));
      *szp = ctype_isfunc(info) ? CTSIZE_INVALID : ct->size;
      break;
    }
    ct = ctype_get(cts, ctype_cid(info));
  }
  return qual;
}
